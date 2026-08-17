#!/usr/bin/env bash
set -euo pipefail

APP_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="${APP_DIR}/.env"

[[ -f "$ENV_FILE" ]] || { echo "Falta el archivo $ENV_FILE" >&2; exit 1; }
set -a
# shellcheck disable=SC1090
source "$ENV_FILE"
set +a

TARGET="${1:-${SSL_DOMAIN:-${SERVER_IP:-}}}"
EMAIL="${2:-${SSL_EMAIL:-}}"
HTTP_PORT="${HTTP_PORT:-8080}"
SITE_NAME="academia-matematicas"
SITE_FILE="/etc/nginx/sites-available/${SITE_NAME}"
ENABLED_FILE="/etc/nginx/sites-enabled/${SITE_NAME}"
WEBROOT="/var/www/certbot"

usage() {
  cat <<'TXT'
Uso:
  bash academia_matematicas/configurar-ssl.sh [IP-O-DOMINIO] [CORREO]

Sin argumentos utiliza SSL_DOMAIN, SERVER_IP y SSL_EMAIL desde .env.

Antes de ejecutarlo abre los puertos TCP 80 y 443 en Google Cloud y levanta
la aplicacion con: bash academia_matematicas/ejecutar-docker.sh up
TXT
}

[[ "$TARGET" == "-h" || "$TARGET" == "--help" || "$TARGET" == "help" ]] && {
  usage
  exit 0
}

[[ -n "$TARGET" && -n "$EMAIL" ]] || { usage >&2; exit 2; }
[[ "$EMAIL" =~ ^[^[:space:]@]+@[^[:space:]@]+\.[^[:space:]@]+$ ]] || {
  echo "Correo no valido: $EMAIL" >&2
  exit 2
}
[[ "$HTTP_PORT" =~ ^[0-9]+$ ]] && (( HTTP_PORT >= 1 && HTTP_PORT <= 65535 )) || {
  echo "HTTP_PORT no valido: $HTTP_PORT" >&2
  exit 2
}

is_ipv4() {
  local ip="$1" part
  [[ "$ip" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]] || return 1
  IFS=. read -r -a parts <<<"$ip"
  for part in "${parts[@]}"; do
    (( 10#$part >= 0 && 10#$part <= 255 )) || return 1
  done
}

if ! is_ipv4 "$TARGET" && [[ ! "$TARGET" =~ ^([A-Za-z0-9]([A-Za-z0-9-]{0,61}[A-Za-z0-9])?\.)+[A-Za-z]{2,63}$ ]]; then
  echo "IP o dominio no valido: $TARGET" >&2
  exit 2
fi

command -v sudo >/dev/null || {
  echo "Este script debe ejecutarse en Ubuntu con acceso a sudo." >&2
  exit 1
}

if ! curl --fail --silent --show-error --max-time 10 "http://127.0.0.1:${HTTP_PORT}/" >/dev/null; then
  echo "La aplicacion no responde en http://127.0.0.1:${HTTP_PORT}/" >&2
  echo "Ejecuta primero: bash academia_matematicas/ejecutar-docker.sh up" >&2
  exit 1
fi

echo "==> Instalando Nginx y Certbot actualizado"
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y nginx snapd
sudo snap install core >/dev/null 2>&1 || sudo snap refresh core
if ! sudo snap list certbot >/dev/null 2>&1; then
  sudo snap install --classic certbot
else
  sudo snap refresh certbot
fi
sudo ln -sfn /snap/bin/certbot /usr/local/bin/certbot
CERTBOT="/usr/local/bin/certbot"

sudo install -d -m 0755 "$WEBROOT/.well-known/acme-challenge"

write_http_site() {
  sudo tee "$SITE_FILE" >/dev/null <<NGINX
server {
    listen 80;
    listen [::]:80;
    server_name ${TARGET};

    location ^~ /.well-known/acme-challenge/ {
        root ${WEBROOT};
        default_type text/plain;
    }

    location / {
        proxy_pass http://127.0.0.1:${HTTP_PORT};
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \$scheme;
    }
}
NGINX
}

write_https_site() {
  sudo tee "$SITE_FILE" >/dev/null <<NGINX
server {
    listen 80;
    listen [::]:80;
    server_name ${TARGET};

    location ^~ /.well-known/acme-challenge/ {
        root ${WEBROOT};
        default_type text/plain;
    }

    location / {
        return 301 https://${TARGET}\$request_uri;
    }
}

server {
    listen 443 ssl http2;
    listen [::]:443 ssl http2;
    server_name ${TARGET};

    ssl_certificate /etc/letsencrypt/live/${TARGET}/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/${TARGET}/privkey.pem;
    ssl_protocols TLSv1.2 TLSv1.3;
    ssl_session_timeout 1d;
    ssl_session_cache shared:SSL:10m;
    ssl_session_tickets off;

    client_max_body_size 55M;

    location / {
        proxy_pass http://127.0.0.1:${HTTP_PORT};
        proxy_http_version 1.1;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto https;
        proxy_read_timeout 120s;
    }

    add_header Strict-Transport-Security "max-age=31536000" always;
    add_header X-Content-Type-Options "nosniff" always;
    add_header X-Frame-Options "SAMEORIGIN" always;
    add_header Referrer-Policy "strict-origin-when-cross-origin" always;
}
NGINX
}

write_http_site
sudo ln -sfn "$SITE_FILE" "$ENABLED_FILE"
sudo rm -f /etc/nginx/sites-enabled/default
sudo nginx -t
sudo systemctl enable --now nginx
sudo systemctl reload nginx

if is_ipv4 "$TARGET"; then
  echo "==> Solicitando certificado publico para la IP ${TARGET}"
  sudo "$CERTBOT" certonly \
    --preferred-profile shortlived \
    --webroot \
    --webroot-path "$WEBROOT" \
    --ip-address "$TARGET" \
    --cert-name "$TARGET" \
    --email "$EMAIL" \
    --agree-tos \
    --no-eff-email \
    --non-interactive \
    --keep-until-expiring
else
  echo "==> Solicitando certificado publico para ${TARGET}"
  sudo "$CERTBOT" certonly \
    --webroot \
    --webroot-path "$WEBROOT" \
    --domain "$TARGET" \
    --cert-name "$TARGET" \
    --email "$EMAIL" \
    --agree-tos \
    --no-eff-email \
    --non-interactive \
    --keep-until-expiring
fi

write_https_site
sudo nginx -t
sudo systemctl reload nginx

sudo install -d -m 0755 /etc/letsencrypt/renewal-hooks/deploy
sudo tee /etc/letsencrypt/renewal-hooks/deploy/reload-nginx.sh >/dev/null <<'HOOK'
#!/usr/bin/env bash
set -e
nginx -t
systemctl reload nginx
HOOK
sudo chmod 0755 /etc/letsencrypt/renewal-hooks/deploy/reload-nginx.sh
sudo systemctl enable --now snap.certbot.renew.timer 2>/dev/null || true
sudo "$CERTBOT" renew \
  --cert-name "$TARGET" \
  --dry-run \
  --deploy-hook "systemctl reload nginx"

echo
echo "SSL configurado: https://${TARGET}/"
echo "La renovacion automatica de Certbot quedo habilitada."
