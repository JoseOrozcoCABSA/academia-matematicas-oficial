#!/usr/bin/env bash
set -Eeuo pipefail

PROJECT_ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="${PROJECT_ROOT}/.env"
[[ -f "${ENV_FILE}" ]] || { echo "Error: falta ${ENV_FILE}." >&2; exit 1; }
set -a
source "${ENV_FILE}"
set +a

command -v mysql >/dev/null 2>&1 || { echo "Error: el cliente mysql no está instalado." >&2; exit 1; }
[[ "${DB_NAME}" =~ ^[A-Za-z0-9_-]+$ ]] || { echo "Error: DB_NAME no es válido." >&2; exit 1; }

mysql_arguments=(--host="${DB_HOST}" --port="${DB_PORT}" --user="${DB_USER}" --default-character-set=utf8mb4)

if ! env MYSQL_PWD="${DB_PASSWORD}" mysql "${mysql_arguments[@]}" -e 'SELECT 1' >/dev/null; then
  echo "Error: no fue posible conectar a MySQL en ${DB_HOST}:${DB_PORT} con el usuario configurado en .env." >&2
  exit 1
fi

database_exists="$(env MYSQL_PWD="${DB_PASSWORD}" mysql "${mysql_arguments[@]}" --batch --skip-column-names \
  -e "SELECT COUNT(*) FROM information_schema.SCHEMATA WHERE SCHEMA_NAME='${DB_NAME}';")"
if [[ "${database_exists}" == "0" ]]; then
  echo "Creando únicamente la base ${DB_NAME} con el usuario configurado en .env..."
  if ! env MYSQL_PWD="${DB_PASSWORD}" mysql "${mysql_arguments[@]}" \
    -e "CREATE DATABASE \`${DB_NAME}\` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"; then
    echo "Error: el usuario ${DB_USER} se conecta, pero no tiene permiso para crear la base ${DB_NAME}." >&2
    exit 1
  fi
fi

table_count="$(env MYSQL_PWD="${DB_PASSWORD}" mysql "${mysql_arguments[@]}" --database="${DB_NAME}" --batch --skip-column-names \
  -e 'SELECT COUNT(*) FROM information_schema.tables WHERE table_schema=DATABASE();')"

if [[ "${table_count}" == "0" ]]; then
  echo "La base está vacía; cargando estructura y datos iniciales..."
  sed -e '/^CREATE DATABASE IF NOT EXISTS /d' -e '/^USE `/d' \
    "${PROJECT_ROOT}/database/init/01-academia-matematicas-soa.sql" | \
    env MYSQL_PWD="${DB_PASSWORD}" mysql "${mysql_arguments[@]}" --database="${DB_NAME}"
else
  echo "La base ${DB_NAME} ya contiene ${table_count} tablas; no se sobrescribió."
fi

shopt -s nullglob
for migration in "${PROJECT_ROOT}"/database/migrations/*.sql; do
  echo "Aplicando $(basename -- "${migration}")..."
  env MYSQL_PWD="${DB_PASSWORD}" mysql "${mysql_arguments[@]}" --database="${DB_NAME}" <"${migration}"
done

echo "Base y migraciones listas en ${DB_HOST}:${DB_PORT}."
