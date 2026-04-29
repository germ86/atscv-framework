# atscv-framework

Production-ready ATS-safe LaTeX CV system with multi-mode design layers, multilingual support, reusable macros, and validation workflow.

## Quick start

```bash
lualatex -interaction=nonstopmode -output-directory=build examples/minimal.tex
pdftotext build/minimal.pdf -
```

## Language support

Class option:

```tex
\documentclass[lang=en]{atscv}
```

Supported: `en`, `de`, `es`, `fr`, `zh`, `ar` (RTL), `hi`.

Implementation details:
- LuaLaTeX only
- `babel` with `bidi=basic`
- `fontspec` fallback families for Latin, CJK, Arabic, and Devanagari

## Design modes

- `ats`: ultra-minimal, no color, maximum parser reliability.
- `modern`: Big Tech readability with restrained accent hierarchy.
- `executive`: KPI-first leadership narrative with stronger separators.
- `consulting`: structured, McKinsey-like section discipline.
- `compact`: dense 1-page optimization with reduced whitespace.

ATS constraints preserved:
- no tables
- no multicol
- no minipage
- no sidebars

## Core macros

- `\cvprofile`, `\cvsection`, `\cventry`, `\cvachievement`, `\cvskills`
- `\cvimpact`, `\cvkpi`, `\cvproject`, `\cvhighlight`

## Examples

- `examples/minimal.tex`
- `examples/fabio-bigtech-modern.tex`
- `examples/fabio-executive.tex`
- `examples/fabio-consulting.tex`
- `examples/fabio-ats.tex`
- `examples/de-careertrack.tex`
- `examples/multilang-en.tex`
- `examples/multilang-de.tex`
- `examples/multilang-zh.tex`
- `examples/multilang-ar.tex`
- `examples/multilang-hi.tex`

## Documentation

- Manual source: `docs/atscv-manual.tex`

