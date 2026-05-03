#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
lualatex -interaction=nonstopmode -halt-on-error examples/overleaf-explicit-modules.tex >/tmp/atscv-module.log
for m in "schema=cloud" "color=burgundy" "style=consulting" "layout=standard" "lang=de"; do
  rg -q "ATSCV MODULE loaded $m" /tmp/atscv-module.log
done
pdftotext examples/overleaf-explicit-modules.pdf /tmp/overleaf-explicit-modules.txt
for t in "Zusammenfassung" "Berufserfahrung" "Schema: cloud" "Color: burgundy" "Style: consulting" "Layout: standard" "Language: de"; do
  rg -q "$t" /tmp/overleaf-explicit-modules.txt
done
echo ok
