#!/usr/bin/env bash
set -Eeuo pipefail

PROJECT_ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="${PROJECT_ROOT}/.env"
[[ -f "${ENV_FILE}" ]] || { echo "Error: falta ${ENV_FILE}." >&2; exit 1; }
set -a
source "${ENV_FILE}"
set +a

command -v docker >/dev/null 2>&1 || { echo "Error: Docker no está instalado." >&2; exit 1; }
docker info >/dev/null 2>&1 || { echo "Error: Docker no está activo o faltan permisos." >&2; exit 1; }
env MYSQL_PWD="${DB_PASSWORD}" mysqladmin --host="${DB_HOST}" --port="${DB_PORT}" --user="${DB_USER}" ping --silent >/dev/null || {
  echo "Error: la base MySQL del servidor no responde en ${DB_HOST}:${DB_PORT}." >&2
  exit 1
}

cd "${PROJECT_ROOT}"
arguments=(compose --env-file "${ENV_FILE}" up -d)
if [[ "${1:-}" != "--no-build" ]]; then arguments+=(--build); fi
docker "${arguments[@]}"
docker compose --env-file "${ENV_FILE}" ps

echo
echo "Portal estudiantes: http://localhost:${STUDENT_DOCKER_PORT}"
echo "Administración:     http://localhost:${ADMIN_DOCKER_PORT}"
echo "API Gateway:        http://localhost:${GATEWAY_PORT}"
echo "MySQL del servidor: ${DB_HOST}:${DB_PORT}"
