#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
latexmk -xelatex -halt-on-error examples/overleaf-explicit-modules.tex >/tmp/atscv-module.log
