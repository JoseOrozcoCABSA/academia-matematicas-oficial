#!/usr/bin/env bash
set -Eeuo pipefail

ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="${ROOT}/.env"
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
echo
echo "Preview estudiantes: http://${server_ip}:${preview_port}"
echo "SQLite local: ${SQLITE_FILE}"
echo 'La copia es de solo lectura, no contiene usuarios ni progreso y no consulta bases externas.'
