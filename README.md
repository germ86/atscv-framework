# atscv-framework

ATS-safe LaTeX CV framework for Big Tech, executive search, consulting, infrastructure, security, cloud, and human-risk roles.

## Compiler requirements
- LuaLaTeX
- pdftotext
- qpdf

## Design modes
- `ats`: strict parsing mode, black/white only, no decoration.
- `modern`: Big Tech style with subtle accent hierarchy.
- `executive`: KPI-first leadership narrative.
- `consulting`: concise impact-first structure.
- `compact`: space-efficient one-page mode.

## ATS-safe policy
- No hidden text.
- No white-on-white keyword stuffing.
- No tables, multicol, minipage, parbox, sidebars, or text boxes.

## Keyword helper philosophy
Use transparent alignment helpers:
- `\cvtargetrole{...}`
- `\cvkeywordgroup{category}{keywords}`
- `\cvcompetency{competency}{evidence}`
- `\cvrolefit{role}{fit statement}`
- `\cvtechstack{category}{tools}`
- `\cvdomainfocus{...}`

## Cover letter mapping
See `docs/cv-cover-letter-mapping.md` for requirement-to-evidence mapping and reusable argument tables.

## Interview response frameworks
See `docs/interview-response-frameworks.md` for STAR, OODA, and combined technical interview examples.

## Validation workflow
```bash
lualatex main.tex
lualatex examples/fabio-bigtech-modern.tex
lualatex examples/fabio-executive.tex
lualatex examples/fabio-consulting.tex
lualatex examples/fabio-ats.tex
pdftotext output.pdf output.txt
qpdf --check output.pdf
```
