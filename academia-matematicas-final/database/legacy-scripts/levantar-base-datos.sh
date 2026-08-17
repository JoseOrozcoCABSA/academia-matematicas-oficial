#!/usr/bin/env bash
set -euo pipefail

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="${BASE_DIR}/.env"
SQL_FILE="${BASE_DIR}/academia_completo.sql"

[[ -f "$ENV_FILE" ]] || { echo "No existe $ENV_FILE" >&2; exit 1; }
set -a
# shellcheck disable=SC1090
source "$ENV_FILE"
set +a

DB_USER="${ACADEMIA_DB_USER:-academiacabsa}"
DB_PASSWORD="${ACADEMIA_DB_PASSWORD:-}"
DB_PORT="${ACADEMIA_DB_PORT:-3306}"
FORCE="false"

[[ "${1:-}" == "--force" ]] && FORCE="true"
[[ -s "$SQL_FILE" ]] || { echo "No existe $SQL_FILE" >&2; exit 1; }
[[ "$(grep -c '^CREATE TABLE' "$SQL_FILE" || true)" -ge 14 ]] || {
  echo "El respaldo no contiene las 14 tablas esperadas." >&2
  exit 1
}
command -v sudo >/dev/null || { echo "Este script requiere sudo." >&2; exit 1; }

if ! command -v mysql >/dev/null || ! dpkg-query -W mysql-server >/dev/null 2>&1; then
  echo "==> Instalando MySQL en Ubuntu"
  sudo apt-get update
  sudo DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server mysql-client
else
  echo "==> MySQL ya está instalado"
fi

sudo systemctl enable --now mysql

MYSQL_DOCKER_CONFIG="/etc/mysql/mysql.conf.d/zz-academia-docker.cnf"
LEGACY_MYSQL_DOCKER_CONFIG="/etc/mysql/mysql.conf.d/academia-docker.cnf"
temporary="$(mktemp)"
cat > "$temporary" <<'CONF'
[mysqld]
bind-address = 0.0.0.0
mysqlx-bind-address = 127.0.0.1
CONF
mysql_config_changed="false"
if [[ -f "$LEGACY_MYSQL_DOCKER_CONFIG" ]]; then
  sudo rm -f "$LEGACY_MYSQL_DOCKER_CONFIG"
  mysql_config_changed="true"
fi
if [[ ! -f "$MYSQL_DOCKER_CONFIG" ]] || ! sudo cmp -s "$temporary" "$MYSQL_DOCKER_CONFIG"; then
  echo "==> Habilitando conexión desde la red interna de Docker"
  sudo install -m 0644 "$temporary" "$MYSQL_DOCKER_CONFIG"
  mysql_config_changed="true"
fi
rm -f "$temporary"
if [[ "$mysql_config_changed" == "true" ]]; then
  sudo systemctl restart mysql
fi

MYSQL_BIND_ADDRESS="$(sudo mysql -N -B -e 'SELECT @@GLOBAL.bind_address;' | tr -d '[:space:]')"
if [[ "$MYSQL_BIND_ADDRESS" != "0.0.0.0" && "$MYSQL_BIND_ADDRESS" != "*" ]]; then
  echo "MySQL no quedo disponible para Docker; bind_address=${MYSQL_BIND_ADDRESS}" >&2
  echo "Revisa los archivos de /etc/mysql/mysql.conf.d/" >&2
  exit 1
fi
echo "==> MySQL escucha en ${MYSQL_BIND_ADDRESS}:3306 para la red interna de Docker"

echo "==> Creando bases y usuario local"
sudo mysql <<SQL
CREATE DATABASE IF NOT EXISTS \`academia_usuarios\` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS \`academia_matematicas\` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASSWORD}';
CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';
ALTER USER '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASSWORD}';
ALTER USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';
GRANT ALL PRIVILEGES ON \`academia_usuarios\`.* TO '${DB_USER}'@'localhost';
GRANT ALL PRIVILEGES ON \`academia_matematicas\`.* TO '${DB_USER}'@'localhost';
GRANT ALL PRIVILEGES ON \`academia_usuarios\`.* TO '${DB_USER}'@'%';
GRANT ALL PRIVILEGES ON \`academia_matematicas\`.* TO '${DB_USER}'@'%';
FLUSH PRIVILEGES;
SQL

user_tables="$(MYSQL_PWD="$DB_PASSWORD" mysql -N -h 127.0.0.1 -P "$DB_PORT" -u "$DB_USER" -e "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema='academia_usuarios'")"
content_tables="$(MYSQL_PWD="$DB_PASSWORD" mysql -N -h 127.0.0.1 -P "$DB_PORT" -u "$DB_USER" -e "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema='academia_matematicas'")"

if [[ "$FORCE" == "true" || "$user_tables" -lt 4 || "$content_tables" -lt 10 ]]; then
  echo "==> Importando respaldo completo"
  MYSQL_PWD="$DB_PASSWORD" mysql -h 127.0.0.1 -P "$DB_PORT" -u "$DB_USER" < "$SQL_FILE"
  sudo mysql <<SQL
GRANT ALL PRIVILEGES ON \`academia_usuarios\`.* TO '${DB_USER}'@'localhost';
GRANT ALL PRIVILEGES ON \`academia_matematicas\`.* TO '${DB_USER}'@'localhost';
GRANT ALL PRIVILEGES ON \`academia_usuarios\`.* TO '${DB_USER}'@'%';
GRANT ALL PRIVILEGES ON \`academia_matematicas\`.* TO '${DB_USER}'@'%';
FLUSH PRIVILEGES;
SQL
else
  echo "==> La base ya tiene 4 y 10 tablas; se omite la importación"
fi

MYSQL_PWD="$DB_PASSWORD" mysql -N -h 127.0.0.1 -P "$DB_PORT" -u "$DB_USER" -e \
  "SELECT table_schema, COUNT(*) FROM information_schema.tables WHERE table_schema IN ('academia_usuarios','academia_matematicas') GROUP BY table_schema ORDER BY table_schema"
echo "Base MySQL local lista para la aplicación Docker."
