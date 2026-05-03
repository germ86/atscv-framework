#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
FILES=$(rg --files -g '*.sty' -g '*.cls' -g 'examples/*.tex')
for pat in tagpdf DeclareDocumentMetadata pdfmanagement-testphase accsupp accessibility multicol tabular minipage parbox fontawesome scrlttr2; do
  if rg -n "$pat" $FILES >/dev/null; then echo "forbidden pattern found: $pat"; exit 1; fi
done
echo ok
