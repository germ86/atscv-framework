#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
for c in standard compact executive letter ats; do
cat > /tmp/atscv-layout.tex <<EOF
\\documentclass{atscv}
\\usepackage{atscv-layout-$c}
\\begin{document}x\\end{document}
EOF
lualatex -interaction=nonstopmode -halt-on-error -jobname=atscv-layout /tmp/atscv-layout.tex >/tmp/atscv-layout.log
rg -q "ATSCV MODULE loaded layout=$c" /tmp/atscv-layout.log
done
echo ok
