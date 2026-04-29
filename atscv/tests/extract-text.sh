#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$ROOT_DIR"
for pdf in examples/*.pdf; do
  [ -f "$pdf" ] || continue
  pdftotext "$pdf" "${pdf%.pdf}.txt"
  echo "extracted: $pdf"
done
