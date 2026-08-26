#!/usr/bin/env bash
set -uo pipefail

PROJECT_ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
declare -a names=() results=() codes=()

docker_option=""
for argument in "$@"; do
  case "${argument}" in
    --dominio=*)
      domain="${argument#*=}"; export DNS_ACTIVO=true
      export DNS_PORTAL_HOST="matematicas.${domain}"
      export DNS_ADMIN_HOST="administracion.matematicas.${domain}"
      export DNS_API_HOST="api.matematicas.${domain}"
      ;;
    --ip-servidor=*) export DNS_ACTIVO=false; export SERVER_IP="${argument#*=}" ;;
    --con-https) export HTTPS_ACTIVO=true ;;
    --sin-https) export HTTPS_ACTIVO=false ;;
    --no-build) docker_option=--no-build ;;
    -h|--help)
      echo "Uso: bash ejecutar-todo.sh [--dominio=ejemplo.com|--ip-servidor=192.168.0.6] [--con-https|--sin-https] [--no-build]"
      exit 0 ;;
    *) echo "ERROR: opcion desconocida: ${argument}" >&2; exit 2 ;;
  esac
done

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
if [[ -n "${docker_option}" ]]; then
  run_step "3. Levantar plataforma con Docker" "ejecutar-docker.sh" "${docker_option}"
else
  run_step "3. Levantar plataforma con Docker" "ejecutar-docker.sh"
fi

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
