#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
for c in black blue navy slate green teal burgundy purple brown orange; do
cat > /tmp/atscv-color.tex <<EOF
\\documentclass{atscv}
\\usepackage{atscv-color-$c}
\\begin{document}x\\end{document}
EOF
lualatex -interaction=nonstopmode -halt-on-error -jobname=atscv-color /tmp/atscv-color.tex >/tmp/atscv-color.log
rg -q "ATSCV MODULE loaded color=$c" /tmp/atscv-color.log
done
echo ok
