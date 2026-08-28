#!/usr/bin/env bash
set -Eeuo pipefail

ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="${ROOT}/.env"
detect_public_ip() {
  local detected=""
  if command -v curl >/dev/null 2>&1; then
    detected="$(curl -fsS --connect-timeout 2 --max-time 4 -H 'Metadata-Flavor: Google' \
      'http://metadata.google.internal/computeMetadata/v1/instance/network-interfaces/0/access-configs/0/external-ip' 2>/dev/null || true)"
    [[ "${detected}" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]] || \
      detected="$(curl -fsS --connect-timeout 3 --max-time 5 'https://api.ipify.org' 2>/dev/null || true)"
  fi
  [[ "${detected}" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]] && printf '%s' "${detected}"
}
is_private_ip() {
  [[ "$1" =~ ^10\. || "$1" =~ ^192\.168\. || "$1" =~ ^172\.(1[6-9]|2[0-9]|3[01])\. || "$1" == "127.0.0.1" ]]
}
requested_ip=""
for argument in "$@"; do
  case "${argument}" in
    --ip-servidor=*|--ip-publica=*) requested_ip="${argument#*=}" ;;
    --detectar-ip-publica) requested_ip="auto" ;;
    -h|--help)
      echo 'Uso: bash ejecutar-todo-frontend-estudiantes-preview.sh [--detectar-ip-publica | --ip-publica=IP]'
      exit 0
      ;;
    *) echo "ERROR: opción desconocida: ${argument}" >&2; exit 2 ;;
  esac
done
[[ -f "${ENV_FILE}" ]] || { echo "ERROR: falta ${ENV_FILE}." >&2; exit 1; }
command -v docker >/dev/null 2>&1 || { echo 'ERROR: Docker no está instalado.' >&2; exit 1; }
SQLITE_FILE="${ROOT}/frontend-estudiantes-preview/data/academia-preview.sqlite"
SQL_FILE="${ROOT}/frontend-estudiantes-preview/data/academia-preview.sql"
[[ -s "${SQLITE_FILE}" ]] || { echo "ERROR: falta la mini base incluida en Git: ${SQLITE_FILE}" >&2; exit 1; }
[[ -s "${SQL_FILE}" ]] || { echo "ERROR: falta el respaldo SQL incluido en Git: ${SQL_FILE}" >&2; exit 1; }

echo '===== Levantar frontend estudiantes preview desde SQLite local ====='
echo 'No se realizará ninguna conexión a MySQL.'
docker compose --env-file "${ENV_FILE}" -f "${ROOT}/docker-compose.preview.yml" up -d --build
docker compose --env-file "${ENV_FILE}" -f "${ROOT}/docker-compose.preview.yml" ps

preview_port="$(sed -n 's/^PREVIEW_DOCKER_PORT=//p' "${ENV_FILE}" | tail -n 1 | tr -d '\r')"
preview_port="${preview_port:-4612}"
server_ip="$(sed -n 's/^SERVER_IP=//p' "${ENV_FILE}" | tail -n 1 | tr -d '\r')"
[[ -z "${requested_ip}" ]] || server_ip="${requested_ip}"
ip_mode="$(sed -n 's/^IP_DETECTION_MODE=//p' "${ENV_FILE}" | tail -n 1 | tr -d '\r')"
ip_mode="${ip_mode:-public}"
if [[ "${server_ip}" == "auto" || -z "${server_ip}" ]] || { [[ "${ip_mode}" == "public" ]] && is_private_ip "${server_ip}"; }; then
  detected_ip="$(detect_public_ip || true)"
  if [[ -n "${detected_ip}" ]]; then
    server_ip="${detected_ip}"
  else
    echo 'AVISO: no se detectó la IP pública; se mostrará la IP configurada en .env.' >&2
  fi
fi
echo
echo "Preview estudiantes: http://${server_ip}:${preview_port}"
echo "SQLite local: ${SQLITE_FILE}"
echo 'La copia es de solo lectura, no contiene usuarios ni progreso y no consulta bases externas.'
