#!/usr/bin/env bash
set -Eeuo pipefail

PROJECT_ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="${PROJECT_ROOT}/.env"
[[ -f "${ENV_FILE}" ]] || { echo "Error: falta ${ENV_FILE}." >&2; exit 1; }
set -a
source "${ENV_FILE}"
set +a

configured_directory="${1:-${BACKUP_DIRECTORY:-database/backups}}"
if [[ "${configured_directory}" = /* ]]; then BACKUP_DIRECTORY="${configured_directory}"; else BACKUP_DIRECTORY="${PROJECT_ROOT}/${configured_directory}"; fi
mkdir -p -- "${BACKUP_DIRECTORY}"
BACKUP_DIRECTORY="$(realpath -- "${BACKUP_DIRECTORY}")"
BACKUP_NAME="${BACKUP_NAME:-academia-matematicas-final}"

timestamp="$(date '+%Y%m%d-%H%M%S')"
backup_path="${BACKUP_DIRECTORY}/${DB_NAME}-${timestamp}.sql"

command -v mysqldump >/dev/null 2>&1 || { echo "Error: mysqldump no está instalado." >&2; exit 1; }
env MYSQL_PWD="${DB_PASSWORD}" mysqldump \
  --host="${DB_HOST}" --port="${DB_PORT}" --user="${DB_USER}" \
  --single-transaction --no-tablespaces --routines --triggers --events \
  --default-character-set=utf8mb4 --databases "${DB_NAME}" >"${backup_path}"

if [[ ! -s "${backup_path}" ]]; then
  rm -f -- "${backup_path}"
  echo "Error: el respaldo quedó vacío." >&2
  exit 1
fi

echo "Respaldo de la base del servidor creado: ${backup_path}"
echo "Tamaño: $(wc -c <"${backup_path}" | tr -d ' ') bytes"

if command -v registrar-respaldo >/dev/null 2>&1 \
  && command -v actualizar-respaldo >/dev/null 2>&1 \
  && command -v ver-respaldos >/dev/null 2>&1 \
  && command -v respaldar-gdrive >/dev/null 2>&1; then
  if ! ver-respaldos | grep -Fq -- "${BACKUP_NAME}"; then
    (cd "${BACKUP_DIRECTORY}" && registrar-respaldo "${BACKUP_NAME}")
  fi
  actualizar-respaldo "${BACKUP_NAME}" "${BACKUP_DIRECTORY}"
  respaldar-gdrive "${BACKUP_NAME}"
  echo "Respaldo ${BACKUP_NAME} enviado mediante el gestor de Google Drive."
else
  echo "Aviso: el gestor respaldar-gdrive no está disponible; se conservó el respaldo local."
fi
