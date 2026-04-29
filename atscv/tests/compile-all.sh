#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$ROOT_DIR"
for f in examples/minimal.tex examples/en-modern.tex examples/de-careertrack.tex; do
  lualatex -interaction=nonstopmode -halt-on-error -output-directory="$(dirname "$f")" "$f" >/tmp/atscv-build.log
  echo "compiled: $f"
done
