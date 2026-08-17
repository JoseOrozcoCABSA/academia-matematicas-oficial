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

echo "OK: entorno preparado en ${ENV_FILE}."
