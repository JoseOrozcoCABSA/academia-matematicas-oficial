#!/usr/bin/env bash
set -Eeuo pipefail

ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="${ROOT}/.env"
[[ -f "${ENV_FILE}" ]] || { echo "ERROR: falta ${ENV_FILE}." >&2; exit 1; }
command -v node >/dev/null 2>&1 || { echo 'ERROR: Node.js es obligatorio para extraer el snapshot.' >&2; exit 1; }
command -v python3 >/dev/null 2>&1 || { echo 'ERROR: Python 3 es obligatorio para crear SQLite.' >&2; exit 1; }
command -v docker >/dev/null 2>&1 || { echo 'ERROR: Docker no está instalado.' >&2; exit 1; }

echo '===== 1. Descargar contenido académico desde MySQL ====='
node "${ROOT}/frontend-estudiantes-preview/export-snapshot.mjs"

echo '===== 2. Construir mini base SQLite ====='
python3 "${ROOT}/frontend-estudiantes-preview/build_snapshot.py"

echo '===== 3. Levantar frontend estudiantes preview ====='
docker compose --env-file "${ENV_FILE}" -f "${ROOT}/docker-compose.preview.yml" up -d --build
docker compose --env-file "${ENV_FILE}" -f "${ROOT}/docker-compose.preview.yml" ps

preview_port="$(sed -n 's/^PREVIEW_DOCKER_PORT=//p' "${ENV_FILE}" | tail -n 1 | tr -d '\r')"
preview_port="${preview_port:-4612}"
server_ip="$(sed -n 's/^SERVER_IP=//p' "${ENV_FILE}" | tail -n 1 | tr -d '\r')"
echo
echo "Preview estudiantes: http://${server_ip}:${preview_port}"
echo 'La copia es de solo lectura y no contiene usuarios ni progreso.'
