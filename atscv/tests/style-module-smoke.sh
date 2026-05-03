#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
for c in ats modern executive consulting compact; do
cat > /tmp/atscv-style.tex <<EOF
\\documentclass{atscv}
\\usepackage{atscv-style-$c}
\\begin{document}x\\end{document}
EOF
lualatex -interaction=nonstopmode -halt-on-error -jobname=atscv-style /tmp/atscv-style.tex >/tmp/atscv-style.log
rg -q "ATSCV MODULE loaded style=$c" /tmp/atscv-style.log
done
echo ok
