#!/usr/bin/env bash
set -uo pipefail

PROJECT_ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
declare -a names=() results=() codes=()

echo "===== 0. Preparar configuración segura ====="
bash "${PROJECT_ROOT}/configurar-entorno.sh"

run_step() {
  local name="$1" script="$2"
  shift 2
  local code

  echo
  echo "===== ${name} ====="
  if bash "${PROJECT_ROOT}/${script}" "$@"; then
    code=0
  else
    code=$?
  fi

  names+=("${name}")
  codes+=("${code}")
  if (( code == 0 )); then
    results+=("OK")
  else
    results+=("FALLO")
    echo "AVISO: ${name} fallo con codigo ${code}; se continuara con el siguiente paso." >&2
  fi
}

run_step "1. Crear o actualizar base de datos" "crear-base-datos.sh"
run_step "2. Crear y enviar respaldo" "crear-copia-seguridad.sh"
run_step "3. Levantar plataforma con Docker" "ejecutar-docker.sh" "$@"

echo
echo "===== RESUMEN FINAL ====="
failed=0
for index in "${!names[@]}"; do
  printf '%-45s %s (codigo %s)\n' "${names[$index]}" "${results[$index]}" "${codes[$index]}"
  (( codes[$index] != 0 )) && failed=1
done

if (( failed != 0 )); then
  echo "Proceso terminado: todos los pasos fueron intentados, pero uno o mas fallaron." >&2
  exit 1
fi

echo "Proceso terminado correctamente."
