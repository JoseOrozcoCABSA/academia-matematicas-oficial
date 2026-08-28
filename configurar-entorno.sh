#!/usr/bin/env bash
set -Eeuo pipefail

ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="${ROOT}/.env"
EXAMPLE_FILE="${ROOT}/.env.example"

[[ -f "${ENV_FILE}" ]] || cp -- "${EXAMPLE_FILE}" "${ENV_FILE}"
chmod 600 "${ENV_FILE}" 2>/dev/null || true

read_env() { sed -n "s/^$1=//p" "${ENV_FILE}" | tail -n 1 | tr -d '\r'; }
set_env() {
  local key="$1" value="$2" escaped
  escaped="$(printf '%s' "${value}" | sed 's/[\\&|]/\\&/g')"
  if grep -q "^${key}=" "${ENV_FILE}"; then
    sed -i "s|^${key}=.*|${key}=${escaped}|" "${ENV_FILE}"
  else
    printf '\n%s=%s\n' "${key}" "${value}" >> "${ENV_FILE}"
  fi
}
random_secret() {
  if command -v openssl >/dev/null 2>&1; then openssl rand -hex 32
  else printf '%s:%s:%s:%s' "$(date +%s%N)" "$$" "${RANDOM}" "$(hostname)" | sha256sum | cut -d' ' -f1
  fi
}

detect_public_ip() {
  local detected=""
  if command -v curl >/dev/null 2>&1; then
    detected="$(curl -fsS --connect-timeout 2 --max-time 4 -H 'Metadata-Flavor: Google' \
      'http://metadata.google.internal/computeMetadata/v1/instance/network-interfaces/0/access-configs/0/external-ip' 2>/dev/null || true)"
    [[ "${detected}" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]] || \
      detected="$(curl -fsS --connect-timeout 3 --max-time 5 'https://api.ipify.org' 2>/dev/null || true)"
  fi
  [[ "${detected}" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]] || {
    echo 'ERROR: no fue posible detectar la IP pública; define SERVER_IP manualmente.' >&2
    return 1
  }
  printf '%s' "${detected}"
}

db_password="${DB_PASSWORD:-$(read_env DB_PASSWORD)}"
if [[ -z "${db_password}" || "${db_password}" == configure-* ]]; then
  [[ -r /dev/tty ]] || { echo 'ERROR: define DB_PASSWORD o ejecuta de forma interactiva.' >&2; exit 2; }
  printf 'Contraseña MySQL: ' >/dev/tty
  IFS= read -r -s db_password </dev/tty
  printf '\n' >/dev/tty
fi
[[ -n "${db_password}" ]] || { echo 'ERROR: DB_PASSWORD no puede quedar vacío.' >&2; exit 2; }
set_env DB_PASSWORD "${db_password}"

for key in JWT_SECRET INTERNAL_SERVICE_KEY; do
  value="$(read_env "${key}")"
  if [[ -z "${value}" || "${value}" == configure-* || ${#value} -lt 32 ]]; then
    set_env "${key}" "$(random_secret)"
    echo "OK: ${key} generado de forma segura."
  fi
done

normalize_bool() {
  local name="$1" value="${2,,}"
  case "${value}" in
    true|1|yes|si|sí) printf true ;;
    false|0|no|"") printf false ;;
    *) echo "ERROR: ${name} debe ser true o false." >&2; exit 2 ;;
  esac
}

https_active="$(normalize_bool HTTPS_ACTIVO "${HTTPS_ACTIVO:-$(read_env HTTPS_ACTIVO)}")"
dns_active="$(normalize_bool DNS_ACTIVO "${DNS_ACTIVO:-$(read_env DNS_ACTIVO)}")"
set_env HTTPS_ACTIVO "${https_active}"
set_env DNS_ACTIVO "${dns_active}"

# MySQL externo es la base unica autorizada para esta instalacion.
mysql_external="${MYSQL_HOST_EXTERNO:-$(read_env MYSQL_HOST_EXTERNO)}"
[[ -n "${mysql_external}" ]] || mysql_external="${DB_HOST:-$(read_env DB_HOST)}"
[[ -n "${mysql_external}" ]] || { echo 'ERROR: falta MYSQL_HOST_EXTERNO.' >&2; exit 2; }
set_env MYSQL_DOCKER_ACTIVO false
set_env MYSQL_HOST_EXTERNO "${mysql_external}"
set_env MYSQL_HOST_CONTENEDORES "${mysql_external}"
set_env DB_HOST "${mysql_external}"

if [[ "${dns_active}" == true ]]; then
  portal_host="${DNS_PORTAL_HOST:-$(read_env DNS_PORTAL_HOST)}"
  admin_host="${DNS_ADMIN_HOST:-$(read_env DNS_ADMIN_HOST)}"
  [[ -n "${portal_host}" && -n "${admin_host}" ]] || {
    echo 'ERROR: configura DNS_PORTAL_HOST y DNS_ADMIN_HOST.' >&2; exit 2;
  }
  if [[ "${https_active}" == true ]]; then
    portal_url="https://${portal_host}"; admin_url="https://${admin_host}"; api_url="${portal_url}"
    set_env TRUST_PROXY_HOPS 1
  else
    portal_url="http://${portal_host}:$(read_env STUDENT_DOCKER_PORT)"
    admin_url="http://${admin_host}:$(read_env ADMIN_DOCKER_PORT)"
    api_url="${portal_url}"
    set_env TRUST_PROXY_HOPS 1
  fi
  # Mantiene operativos tanto los dominios como el acceso directo por IP.
  # Es útil en Google Cloud durante propagación DNS o tareas de administración.
  configured_ip="${SERVER_IP:-$(read_env SERVER_IP)}"
  if [[ "${configured_ip}" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
    ip_portal_url="http://${configured_ip}:$(read_env STUDENT_DOCKER_PORT)"
    ip_admin_url="http://${configured_ip}:$(read_env ADMIN_DOCKER_PORT)"
    cors_origins="${portal_url},${admin_url},${ip_portal_url},${ip_admin_url}"
  else
    cors_origins="${portal_url},${admin_url}"
  fi
  public_host="${portal_host}"
  echo "OK: modo DNS activo: estudiantes=${portal_host}, administracion=${admin_host}; API disponible como /api en ambos sitios."
else
  server_ip="${SERVER_IP:-$(read_env SERVER_IP)}"
  [[ -n "${server_ip}" ]] || server_ip=auto
  if [[ "${server_ip}" == "auto" ]]; then
    server_ip="$(detect_public_ip)" || exit 2
    echo "OK: IP pública detectada para los frontends: ${server_ip}."
  fi
  [[ "${server_ip}" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]] || { echo "ERROR: SERVER_IP no valida: ${server_ip}" >&2; exit 2; }
  portal_url="http://${server_ip}:$(read_env STUDENT_DOCKER_PORT)"
  admin_url="http://${server_ip}:$(read_env ADMIN_DOCKER_PORT)"
  api_url="http://${server_ip}:$(read_env GATEWAY_PORT)"
  public_host="${server_ip}"
  set_env SERVER_IP "${server_ip}"
  set_env TRUST_PROXY_HOPS 1
  echo "OK: modo IP activo: ${server_ip}."
fi

set_env PUBLIC_HOST "${public_host}"
set_env API_PUBLIC_URL "/"
set_env PORTAL_PUBLIC_URL "${portal_url}"
set_env ADMIN_PUBLIC_URL "${admin_url}"
set_env CORS_ORIGINS "${cors_origins:-${portal_url},${admin_url}}"
# Los frontends consumen /api en su mismo origen; Nginx reenvía internamente.
set_env VITE_STUDENT_API_URL ""
set_env VITE_ADMIN_API_URL ""
set_env VITE_STUDENT_APP_URL "${portal_url}"

echo "OK: entorno preparado en ${ENV_FILE}."
