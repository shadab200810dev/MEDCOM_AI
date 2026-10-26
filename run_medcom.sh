#!/usr/bin/env sh
set -eu
PROJECT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
PAGE="$PROJECT_DIR/index.html"
if command -v open >/dev/null 2>&1; then
  open "$PAGE"
elif command -v xdg-open >/dev/null 2>&1; then
  xdg-open "$PAGE"
else
  printf 'Open this file in a browser: %s\n' "$PAGE"
fi
