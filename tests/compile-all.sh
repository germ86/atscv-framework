#!/usr/bin/env bash
set -euo pipefail
for tex in examples/*.tex; do
  echo "Compiling $tex"
  lualatex -interaction=nonstopmode -halt-on-error "$tex" >/tmp/$(basename "$tex" .tex).log
  lualatex -interaction=nonstopmode -halt-on-error "$tex" >/tmp/$(basename "$tex" .tex)-2.log
 done
