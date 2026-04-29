# atscv Manual

## 1. Introduction
atscv is a LuaLaTeX-only CV framework designed for stable builds and ATS-safe text extraction.

## 2. ATS parsing principles
ATS tools frequently parse text linearly. atscv preserves logical source order and avoids extraction-hostile structures.

## 3. Why no tables, sidebars, multicol
These structures often reorder text, merge fields, or drop bullets during extraction.

## 4. 30-second human scan design
Modes use clear headings, role/date hierarchy, and concise bullets to support rapid screening.

## 5. Mode documentation
`ats`, `modern`, `executive`, `consulting`, `compact` adjust typography and spacing while preserving single-column flow.

## 6. Multilingual support
Babel-based language headings for English, German, Spanish, French, Chinese, Arabic, and Hindi. Arabic rendering is supported in linear layout; full advanced RTL layout is intentionally out of scope for this stable version.

## 7. Macro reference
Header: `\cvname`, `\cvtitle`, `\cvemail`, `\cvphone`, `\cvlocation`, `\cvlinkedin`, `\cvorcid`, `\cvdoi`, `\makecvheader`

Sections and entries: `\cvsection`, `\cvprofile`, `\cventry`, `\cventryfive`, `\cvachievement`, `\cvimpact`, `\cvhighlight`, `\cvkpi`

Domain helpers: `\cvskills`, `\cvskillgroup`, `\cvproject`, `\cvcertification`, `\cveducation`, `\cvcommunity`

## 8. Fabio sample walkthrough
`main.tex` loads the Fabio modern profile. Additional examples tailor emphasis for ATS, executive, and consulting contexts.

## 9. Testing and validation
Compile with LuaLaTeX, then run `pdftotext` checks to confirm readable ordering.

## 10. Future roadmap for PDF tagging
PDF tagging, PDF/UA, and advanced accessibility metadata are future optional enhancements and deliberately excluded from v0.1.0 stability baseline.
