#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT_DIR"

echo "[checks] secret-pattern scan"
if rg -n --hidden --glob '!.git' --glob '!.env*' --glob '!*.pem' --glob '!*.key' --glob '!*.p12' --glob '!*.md' '(AKIA[0-9A-Z]{16}|-----BEGIN (RSA|EC|OPENSSH|PRIVATE) KEY-----|password\s*=\s*.+)' .; then
  echo "[checks] potential secret pattern(s) found"
  exit 1
else
  echo "[checks] no obvious secret patterns found"
fi

echo "[checks] TODO/FIXME summary"
rg -n --hidden --glob '!.git' --glob '!*.md' --glob '!scripts/checks.sh' 'TODO|FIXME' . || true

echo "[checks] done"
