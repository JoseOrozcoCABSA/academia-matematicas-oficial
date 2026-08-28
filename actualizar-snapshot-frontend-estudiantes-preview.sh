#!/usr/bin/env bash
set -Eeuo pipefail

ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
if [[ "${1:-}" == "--desde-snapshot-incluido" ]]; then
  command -v python3 >/dev/null 2>&1 || { echo 'ERROR: falta Python 3.' >&2; exit 1; }
  SQLITE_FILE="${ROOT}/frontend-estudiantes-preview/data/academia-preview.sqlite"
  echo 'Validando el SQLite incluido en Git (sin MySQL y sin modificar archivos)...'
  python3 -c 'import sqlite3,sys; c=sqlite3.connect(sys.argv[1]); result=c.execute("PRAGMA integrity_check").fetchone()[0]; c.close(); print("Integridad SQLite:", result); raise SystemExit(0 if result == "ok" else 1)' "${SQLITE_FILE}"
  echo 'SQLite incluido listo. No se realizó ninguna conexión externa.'
  exit 0
fi

echo 'ADVERTENCIA: esta acción sí conectará a MySQL para reemplazar el snapshot incluido.'
echo 'Use este script únicamente desde una máquina con acceso a la red privada de MySQL.'
[[ "${1:-}" == "--confirmar-mysql" ]] || {
  echo 'En Google Cloud sin acceso MySQL use: bash actualizar-snapshot-frontend-estudiantes-preview.sh --desde-snapshot-incluido'
  exit 2
}
command -v node >/dev/null 2>&1 || { echo 'ERROR: falta Node.js.' >&2; exit 1; }
command -v python3 >/dev/null 2>&1 || { echo 'ERROR: falta Python 3.' >&2; exit 1; }
[[ -d "${ROOT}/learning-service/node_modules/mysql2" ]] || npm ci --prefix "${ROOT}/learning-service"
node "${ROOT}/frontend-estudiantes-preview/export-snapshot.mjs"
python3 "${ROOT}/frontend-estudiantes-preview/build_snapshot.py"
echo 'Snapshot actualizado. Revise y suba los tres archivos de data a Git.'
