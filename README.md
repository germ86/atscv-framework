# atscv

atscv is a stable LaTeX CV framework focused on ATS-safe linear extraction and polished single-column presentation.

## Why ATS-safe LaTeX matters
Most ATS pipelines flatten PDFs into linear text. Complex layout primitives (tables, sidebars, multicolumn blocks) often scramble extraction order. atscv keeps content in logical reading order.

## Requirements
- LuaLaTeX only
- TeX Live with `fontspec`, `babel`, `hyperref`
- Optional: `pdftotext` for extraction checks

## Quick start
```bash
lualatex main.tex
pdftotext main.pdf main.txt
```

## Modes
- `ats`: strict black-and-white parsing reliability
- `modern`: polished Big Tech profile
- `executive`: leadership and KPI emphasis
- `consulting`: concise impact-focused style
- `compact`: reduced spacing for dense profiles

## Multilingual support
Supported `lang=` options: `en`, `de`, `es`, `fr`, `zh`, `ar`, `hi`.

## Design philosophy
- single-column only
- strict semantic macros
- readable hierarchy for a 30-second human scan
- ATS-safe extraction first

## ATS limitations
No framework can guarantee identical parsing across every ATS vendor. Validate each output with `pdftotext` and target-system uploads.

## Examples
See `examples/` for minimal, Fabio role-tailored variants, and multilingual samples.

## Validation workflow
```bash
bash tests/compile-all.sh
bash tests/extract-text.sh
```

## Future roadmap
PDF/UA tagging is intentionally postponed. Future optional mode may evaluate robust tagging once stability constraints are met.
