#!/usr/bin/env bash
# @file Retira Academia de Matematicas y conserva exclusivamente su preview SQLite.
set -Eeuo pipefail

ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="${ROOT}/.env"
MAIN_COMPOSE="${ROOT}/docker-compose.yml"
PREVIEW_COMPOSE="${ROOT}/docker-compose.preview.yml"

if [[ "${1:-}" != "--confirmar" ]]; then
  echo 'Este comando elimina los contenedores de la plataforma de matematicas.' >&2
  echo 'Conserva el preview, sus datos SQLite, volumenes e imagenes.' >&2
  echo "Uso: bash $(basename "$0") --confirmar" >&2
  exit 2
fi

command -v docker >/dev/null 2>&1 || { echo 'ERROR: Docker no esta instalado.' >&2; exit 1; }
[[ -f "${ENV_FILE}" ]] || { echo "ERROR: falta ${ENV_FILE}." >&2; exit 1; }

main_project="$(sed -n 's/^COMPOSE_PROJECT_NAME=//p' "${ENV_FILE}" | tail -n 1 | tr -d '\r')"
main_project="${main_project:-academia-matematicas-final}"
preview_project="${main_project}-preview"

echo '===== 1. Asegurar que el preview aislado esta disponible ====='
docker compose --env-file "${ENV_FILE}" -f "${PREVIEW_COMPOSE}" up -d

preview_count="$(docker ps --filter "label=com.docker.compose.project=${preview_project}" --format '{{.Names}}' | wc -l | tr -d ' ')"
if [[ "${preview_count}" -lt 2 ]]; then
  echo "ERROR: el proyecto ${preview_project} no tiene sus dos contenedores activos; no se retirara la plataforma." >&2
  docker compose --env-file "${ENV_FILE}" -f "${PREVIEW_COMPOSE}" ps >&2
  exit 1
fi

echo '===== 2. Retirar servicios SOA de Academia de Matematicas ====='
# No se usa -v ni --rmi: datos persistentes e imagenes siguen siendo recuperables.
docker compose --env-file "${ENV_FILE}" -f "${MAIN_COMPOSE}" down --remove-orphans

echo '===== 3. Retirar el contenedor heredado independiente ====='
legacy_name='academia-matematicas'
if docker container inspect "${legacy_name}" >/dev/null 2>&1; then
  docker rm -f "${legacy_name}"
else
  echo "INFO: ${legacy_name} ya no existe."
fi

echo '===== 4. Verificacion final ====='
remaining_math="$(docker ps --filter 'name=academia-matematicas' --format '{{.Names}}' | grep -v -- '-preview-' || true)"
if [[ -n "${remaining_math}" ]]; then
  echo 'ERROR: aun existen contenedores de matematicas ajenos al preview:' >&2
  printf '%s\n' "${remaining_math}" >&2
  exit 1
fi

docker compose --env-file "${ENV_FILE}" -f "${PREVIEW_COMPOSE}" ps
preview_port="$(sed -n 's/^PREVIEW_DOCKER_PORT=//p' "${ENV_FILE}" | tail -n 1 | tr -d '\r')"
echo
echo "LISTO: solo permanece el preview de Academia de Matematicas en el puerto ${preview_port:-4612}."
echo 'Los volumenes e imagenes no fueron eliminados y permiten recuperar la plataforma posteriormente.'

