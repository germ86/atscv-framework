# atscv

ATS-safe, LuaLaTeX-only CV framework with explicit, Overleaf-safe modules.

## Recommended Overleaf usage (explicit modules)
```tex
\documentclass{atscv}
\usepackage{atscv-schema-cloud}
\usepackage{atscv-color-green}
\usepackage{atscv-style-modern}
\usepackage{atscv-layout-standard}
\usepackage{atscv-lang-en}
```

## Legacy class-option usage
```tex
\documentclass[lang=en,style=modern,color=green,schema=cloud,layout=standard]{atscv}
```

Explicit modules are recommended on Overleaf because they avoid stale option caching and are visible in logs via `ATSCV MODULE loaded ...`.

## Troubleshooting
- Ensure compiler is **LuaLaTeX**.
- Clear cached auxiliary files.
- Confirm all local `atscv-*.sty` files are uploaded.
- Compile `examples/overleaf-explicit-modules.tex`.
- Inspect log for `ATSCV MODULE loaded ...` and `ATSCV CONFIG ...` lines.

## Build and tests
- `bash tests/check-forbidden-patterns.sh`
- `bash tests/module-smoke.sh`
- `bash tests/color-module-smoke.sh`
- `bash tests/style-module-smoke.sh`
- `bash tests/layout-module-smoke.sh`
- `bash tests/language-module-smoke.sh`
