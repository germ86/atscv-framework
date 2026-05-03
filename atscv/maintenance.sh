#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
bash tests/check-forbidden-patterns.sh
bash tests/module-smoke.sh
bash tests/color-module-smoke.sh
bash tests/style-module-smoke.sh
bash tests/layout-module-smoke.sh
bash tests/language-module-smoke.sh
bash tests/compile-all.sh
bash tests/extract-text.sh
