#!/usr/bin/env bash
set -Eeuo pipefail
ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
identities=("$@")
[[ ${#identities[@]} -gt 0 ]] || { echo "Uso: $0 portal admin api" >&2; exit 2; }
command -v openssl >/dev/null 2>&1 || { echo "ERROR: se necesita openssl" >&2; exit 1; }
mkdir -p -- "${ROOT}/certificados"
certificate="${ROOT}/certificados/academia-matematicas.crt"
private_key="${ROOT}/certificados/academia-matematicas.key"
san_entries=()
for identity in "${identities[@]}"; do san_entries+=("DNS:${identity}"); done
san_value="$(IFS=,; echo "${san_entries[*]}")"
openssl req -x509 -newkey rsa:3072 -sha256 -nodes -days 825 \
  -keyout "${private_key}" -out "${certificate}" \
  -subj "/CN=${identities[0]}/O=Academia Matematicas CABSA" \
  -addext "subjectAltName=${san_value}"
chmod 600 "${private_key}"; chmod 644 "${certificate}"
echo "OK: certificado local generado para ${identities[*]}."
echo "AVISO: para Internet reemplazalo por un certificado valido de una CA."
