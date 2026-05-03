#!/usr/bin/env bash
set -euo pipefail
for c in en de fr es; do
cat > /tmp/atscv-lang.tex <<EOF
\\documentclass{atscv}
\\usepackage{atscv-lang-$c}
\\begin{document}\\cvsection{\\headingSummary}\\end{document}
EOF
lualatex -interaction=nonstopmode -halt-on-error -jobname=atscv-lang /tmp/atscv-lang.tex >/tmp/atscv-lang.log
rg -q "ATSCV MODULE loaded lang=$c" /tmp/atscv-lang.log
done
echo ok
