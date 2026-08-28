#!/usr/bin/env bash
set -Eeuo pipefail

ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
if [[ "${1:-}" == "--desde-snapshot-incluido" ]]; then
  command -v python3 >/dev/null 2>&1 || { echo 'ERROR: falta Python 3.' >&2; exit 1; }
  echo 'Reconstruyendo SQLite desde el snapshot incluido en Git (sin MySQL)...'
  python3 "${ROOT}/frontend-estudiantes-preview/build_snapshot.py"
  echo 'SQLite reconstruido. No se realizó ninguna conexión externa.'
  exit 0
fi
echo 'ADVERTENCIA: esta acción sí conectará a MySQL para reemplazar el snapshot incluido.'
echo 'Use este script únicamente cuando desee publicar una nueva copia del contenido.'
[[ "${1:-}" == "--confirmar-mysql" ]] || {
  echo 'Cancelado. Para continuar: bash actualizar-snapshot-frontend-estudiantes-preview.sh --confirmar-mysql'
  exit 2
}
command -v node >/dev/null 2>&1 || { echo 'ERROR: falta Node.js.' >&2; exit 1; }
command -v python3 >/dev/null 2>&1 || { echo 'ERROR: falta Python 3.' >&2; exit 1; }
[[ -d "${ROOT}/learning-service/node_modules/mysql2" ]] || npm ci --prefix "${ROOT}/learning-service"
node "${ROOT}/frontend-estudiantes-preview/export-snapshot.mjs"
python3 "${ROOT}/frontend-estudiantes-preview/build_snapshot.py"
echo 'Snapshot actualizado. Revise y suba los tres archivos de data a Git.'
