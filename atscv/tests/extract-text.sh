#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
for pdf in examples/*.pdf; do
  pdftotext "$pdf" "${pdf%.pdf}.txt"
  echo "extracted: $pdf"
done
