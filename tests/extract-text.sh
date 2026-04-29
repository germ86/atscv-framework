#!/usr/bin/env bash
set -euo pipefail
for pdf in main.pdf examples/*.pdf; do
  [ -f "$pdf" ] || continue
  txt="${pdf%.pdf}.txt"
  pdftotext "$pdf" "$txt"
  echo "--- $txt (first 40 lines) ---"
  head -n 40 "$txt"
 done
