# atscv-framework

Production-ready ATS-safe LaTeX CV system with multi-mode design layers, reusable macros, and validation workflow.

## Quick start

```bash
lualatex -interaction=nonstopmode -output-directory=build examples/minimal.tex
pdftotext build/minimal.pdf -
```

## Design modes

- `ats`: ultra-minimal, no color, maximum parser reliability.
- `modern`: Big Tech readability with restrained accent hierarchy.
- `executive`: KPI-first leadership narrative with stronger separators.
- `consulting`: structured, McKinsey-like section discipline.
- `compact`: dense 1-page optimization with reduced whitespace.

All modes remain ATS-safe by design:
- no tables
- no multicol
- no minipage
- no sidebars

## Core macros

- `\cvprofile`
- `\cvsection`
- `\cventry`
- `\cvachievement`
- `\cvskills`
- `\cvimpact`
- `\cvkpi`
- `\cvproject`
- `\cvhighlight`

## Examples

- `examples/minimal.tex`
- `examples/fabio-bigtech-modern.tex`
- `examples/fabio-executive.tex`
- `examples/fabio-consulting.tex`
- `examples/fabio-ats.tex`
- `examples/de-careertrack.tex`

## Documentation

- Manual source: `docs/atscv-manual.tex`

## Screenshot placeholders

- `docs/screenshots/ats-mode.png` (placeholder)
- `docs/screenshots/modern-mode.png` (placeholder)
- `docs/screenshots/executive-mode.png` (placeholder)

