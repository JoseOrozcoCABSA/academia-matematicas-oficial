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
compose=(docker compose --env-file "${ENV_FILE}" -f docker-compose.yml)
if [[ "${DNS_ACTIVO,,}" == true && "${HTTPS_ACTIVO,,}" == true ]]; then
  bash "${PROJECT_ROOT}/scripts/generar-certificado-local.sh" \
    "${DNS_PORTAL_HOST}" "${DNS_ADMIN_HOST}" "${DNS_API_HOST}"
  compose+=(-f docker-compose.dns.yml)
fi
up_args=(up -d)
if [[ "${1:-}" != "--no-build" ]]; then up_args+=(--build); fi
"${compose[@]}" "${up_args[@]}"
"${compose[@]}" ps

echo
echo "Portal estudiantes: ${PORTAL_PUBLIC_URL}"
echo "Administración:     ${ADMIN_PUBLIC_URL}"
echo "API Gateway:        ${API_PUBLIC_URL}"
echo "MySQL del servidor: ${DB_HOST}:${DB_PORT}"
