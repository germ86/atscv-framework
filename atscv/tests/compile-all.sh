#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
for f in examples/*.tex docs/atscv-manual.tex; do
  lualatex -interaction=nonstopmode -halt-on-error "$f" >/tmp/atscv-build.log
  echo "compiled: $f"
done
