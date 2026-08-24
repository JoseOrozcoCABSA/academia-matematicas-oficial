#!/usr/bin/env bash
set -Eeuo pipefail
ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

for service in ai-service api-gateway identity-service learning-service practice-service; do
  echo "===== ${service} ====="
  (cd "${ROOT}/${service}" && npm run check && npm test && npm run build)
done
for frontend in frontend-estudiantes frontend-administracion; do
  echo "===== ${frontend} ====="
  (cd "${ROOT}/${frontend}" && npm run build)
done
node "${ROOT}/scripts/validar-arquitectura.mjs"
node "${ROOT}/scripts/auditar-dependencias.mjs"
docker compose --project-directory "${ROOT}" config --quiet
echo 'Validación de calidad completada.'
