# atscv-framework
atscv is a LaTeX-based, ATS-optimized CV framework that ensures reliable parsing by Applicant Tracking Systems while maintaining high-quality, human-readable document design.


# atscv

**ATS-optimized LaTeX CV framework with structured parsing and human-readable design**

---

## Overview

**atscv** is a LaTeX-based CV framework designed to bridge the gap between Applicant Tracking Systems (ATS) and human recruiter cognition.

Modern hiring pipelines process resumes algorithmically before human review. These systems rely on linear text extraction and often fail on complex layouts such as:

- multi-column designs  
- tables  
- icons and glyphs  
- non-standard fonts  

At the same time, human recruiters scan CVs within 6 to 30 seconds, relying on:

- visual hierarchy  
- pattern recognition  
- impact-driven signals  

**atscv** solves this dual constraint by acting as a:

 **structured CV compiler (data → document)**

---

## Key Features

- ATS-safe linear text architecture  
- LuaLaTeX-based UTF-8 rendering  
- PDF/UA tagging via `\DocumentMetadata`  
- Clean text extraction (`pdftotext` validated)  
- Strong 30-second human scan optimization  
- Multilingual support (LTR and RTL)  
- Modular architecture  

---

## Supported Modes

- **ats** – strict ATS-safe layout without visual risks  
- **modern** – polished design with safe parsing  
- **academic** – publications and biblatex integration  
- **careertrack** – German/DACH Lebenslauf  
- **executive** – KPI and leadership-focused  
- **compact** – space-optimized version  

---

## Multilingual Support

Supported languages:

- English (en)  
- German (de)  
- Spanish (es)  
- French (fr)  
- Chinese (zh)  
- Arabic (ar, RTL)  
- Hindi (hi)  

Features:

- bidirectional text support  
- OpenType font handling  
- script-specific fallback system  

---

## ⚙️ Installation

### Option 1: Local

```bash
git clone https://github.com/yourname/atscv.git
