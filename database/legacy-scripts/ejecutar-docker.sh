#!/usr/bin/env bash
set -euo pipefail

APP_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(cd "${APP_DIR}/.." && pwd)"
IMAGE="academia-matematicas:latest"
CONTAINER="academia-matematicas"
ENV_FILE="${APP_DIR}/.env"
COMMAND="${1:-up}"

usage() {
  cat <<'TXT'
Uso: bash academia_matematicas/ejecutar-docker.sh COMANDO

  setup       Prepara MySQL local y levanta la aplicación Docker.
  up          Construye y levanta la aplicación.
  update      Baja cambios de main, reconstruye y reemplaza el contenedor.
  rebuild     Reconstruye sin cache y reemplaza el contenedor.
  status      Muestra estado, salud y URL.
  logs        Sigue los logs del contenedor.
  down        Detiene y elimina el contenedor; conserva uploads y MySQL.
TXT
}

preflight() {
  command -v docker >/dev/null || {
    echo "Docker no está instalado. Ejecuta: curl -fsSL https://get.docker.com | sudo sh" >&2
    exit 1
  }
  docker info >/dev/null 2>&1 || {
    echo "Docker no está activo o faltan permisos para el usuario." >&2
    echo "Ejecuta: sudo usermod -aG docker \$USER && newgrp docker" >&2
    exit 1
  }
  [[ -f "$ENV_FILE" ]] || { echo "Falta $ENV_FILE" >&2; exit 1; }
  [[ -f "$APP_DIR/Dockerfile" ]] || { echo "Falta el Dockerfile" >&2; exit 1; }
}

http_port() {
  local value
  value="$(grep -E '^HTTP_PORT=' "$ENV_FILE" | tail -1 | cut -d= -f2- || true)"
  echo "${value:-80}"
}

database_ready() {
  if command -v mysqladmin >/dev/null; then
    MYSQL_PWD='Cabsa2026_Segura' mysqladmin ping -h 127.0.0.1 -P 3306 -u academiacabsa --silent >/dev/null 2>&1
  else
    timeout 2 bash -c '</dev/tcp/127.0.0.1/3306' >/dev/null 2>&1
  fi
}

build_image() {
  local mode="${1:-cache}"
  cd "$APP_DIR"
  if [[ "$mode" == "no-cache" ]]; then
    docker build --pull --no-cache -t "$IMAGE" .
  else
    docker build --pull -t "$IMAGE" .
  fi
}

replace_container() {
  local port
  port="$(http_port)"
  docker rm -f "$CONTAINER" >/dev/null 2>&1 || true
  docker run -d \
    --name "$CONTAINER" \
    --restart unless-stopped \
    --add-host=host.docker.internal:host-gateway \
    --env-file "$ENV_FILE" \
    --security-opt no-new-privileges:true \
    -p "${port}:80" \
    -v academia-matematicas-uploads:/var/www/academia_matematicas/15.academia_matematicas_local/uploads \
    -v academia-matematicas-data:/var/www/academia_matematicas/15.academia_matematicas_local/data \
    "$IMAGE" >/dev/null

  for _ in $(seq 1 60); do
    status="$(docker inspect --format '{{if .State.Health}}{{.State.Health.Status}}{{else}}{{.State.Status}}{{end}}' "$CONTAINER")"
    [[ "$status" == "healthy" ]] && break
    [[ "$status" == "unhealthy" || "$status" == "exited" ]] && {
      docker logs --tail=100 "$CONTAINER"
      exit 1
    }
    sleep 2
  done
  show_status
}

show_status() {
  docker ps -a --filter "name=^/${CONTAINER}$"
  echo
  echo "Academia: http://IP-DEL-SERVIDOR:$(http_port)/"
  echo "Juego:    http://IP-DEL-SERVIDOR:$(http_port)/juego-ecuaciones/"
}

start_application() {
  database_ready || {
    echo "MySQL local no está listo. Ejecuta primero:" >&2
    echo "bash academia_matematicas/levantar-base-datos.sh" >&2
    exit 1
  }
  build_image cache
  replace_container
}

update_application() {
  cd "$REPO_DIR"
  if [[ -n "$(git status --porcelain)" ]]; then
    echo "Existen cambios locales. Haz commit antes de descargar main." >&2
    git status --short
    exit 1
  fi
  git fetch origin main
  git pull --ff-only origin main
  preflight
  database_ready || bash "$APP_DIR/levantar-base-datos.sh"
  build_image cache
  replace_container
  docker image prune -f >/dev/null
}

case "$COMMAND" in
  setup)
    preflight
    bash "$APP_DIR/levantar-base-datos.sh"
    start_application
    ;;
  up)
    preflight
    start_application
    ;;
  update)
    preflight
    update_application
    ;;
  rebuild)
    preflight
    database_ready || { echo "MySQL local no está listo." >&2; exit 1; }
    build_image no-cache
    replace_container
    ;;
  status)
    preflight
    show_status
    ;;
  logs)
    preflight
    docker logs --follow --tail=200 "$CONTAINER"
    ;;
  down)
    preflight
    docker rm -f "$CONTAINER" >/dev/null 2>&1 || true
    echo "Aplicación detenida. MySQL y los volúmenes se conservaron."
    ;;
  -h|--help|help)
    usage
    ;;
  *)
    echo "Comando desconocido: $COMMAND" >&2
    usage
    exit 2
    ;;
esac
