\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{atscv}[2026/04/29 ATS-safe CV framework]

\newcommand{\cv@lang}{en}
\DeclareOption{lang=en}{\renewcommand{\cv@lang}{en}}
\DeclareOption{lang=de}{\renewcommand{\cv@lang}{de}}
\DeclareOption{lang=es}{\renewcommand{\cv@lang}{es}}
\DeclareOption{lang=fr}{\renewcommand{\cv@lang}{fr}}
\DeclareOption{lang=zh}{\renewcommand{\cv@lang}{zh}}
\DeclareOption{lang=ar}{\renewcommand{\cv@lang}{ar}}
\DeclareOption{lang=hi}{\renewcommand{\cv@lang}{hi}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[11pt]{article}

\RequirePackage{iftex}
\ifLuaTeX\else
  \ClassError{atscv}{atscv requires LuaLaTeX}{Use lualatex to compile.}
\fi

\RequirePackage[a4paper,margin=1.6cm]{geometry}
\RequirePackage{atscv-lang}
\cv@setupbabel
\RequirePackage{enumitem}
\RequirePackage{xcolor}
\RequirePackage{xparse}
\RequirePackage{titlesec}
\RequirePackage{hyperref}
\RequirePackage{tagpdf}

\setmainfont{TeX Gyre Termes}
\setsansfont{Latin Modern Sans}
\setmonofont{Latin Modern Mono}

\pagestyle{empty}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.25em}
\setlist[itemize]{leftmargin=1.2em,topsep=0.2em,itemsep=0.15em,parsep=0em,partopsep=0em}
\tagpdfsetup{activate-all,math/mathml/luamml/load=false}

\definecolor{cvPrimary}{HTML}{101828}
\definecolor{cvAccent}{HTML}{155EEF}
\definecolor{cvMuted}{HTML}{475467}
\newcommand{\cvNameSize}{\fontsize{21}{25}\selectfont}
\newcommand{\cvSectionSize}{\fontsize{12}{15}\selectfont}
\newcommand{\cvRoleSize}{\fontsize{11}{14}\selectfont}
\newcommand{\cvBodySize}{\fontsize{10.5}{14}\selectfont}

\newlength{\cvSectionGap}\newlength{\cvRoleGap}\newlength{\cvBulletGap}
\setlength{\cvSectionGap}{0.85em}\setlength{\cvRoleGap}{0.45em}\setlength{\cvBulletGap}{0.15em}
\newcommand{\cvsetcolors}[3]{\colorlet{cvPrimary}{#1}\colorlet{cvAccent}{#2}\colorlet{cvMuted}{#3}}
\newcommand{\cvsetspacing}[3]{\setlength{\cvSectionGap}{#1}\setlength{\cvRoleGap}{#2}\setlength{\cvBulletGap}{#3}}

\newcommand{\cvsetmode}[1]{\csname cvmode@#1\endcsname}
\newcommand{\cvmode@ats}{\cvsetcolors{black}{black}{black}\titleformat{\section}{\cvSectionSize\bfseries\color{cvPrimary}}{}{0pt}{}\titlespacing*{\section}{0pt}{\cvSectionGap}{0.3em}}
\newcommand{\cvmode@modern}{\cvsetcolors{black}{cvAccent}{cvMuted}\titleformat{\section}{\cvSectionSize\bfseries\color{cvAccent}}{}{0pt}{}[\titlerule]\titlespacing*{\section}{0pt}{\cvSectionGap}{0.3em}}
\newcommand{\cvmode@executive}{\cvsetcolors{black}{black}{black!60}\titleformat{\section}{\cvSectionSize\bfseries\color{cvPrimary}}{}{0pt}{}[\titlerule]\titlespacing*{\section}{0pt}{\cvSectionGap}{0.35em}}
\newcommand{\cvmode@consulting}{\cvsetcolors{black}{black!85}{black!65}\titleformat{\section}{\cvSectionSize\bfseries\scshape\color{cvPrimary}}{}{0pt}{}[\titlerule]\titlespacing*{\section}{0pt}{\cvSectionGap}{0.4em}}
\newcommand{\cvmode@compact}{\cvsetcolors{black}{black}{black!70}\cvsetspacing{0.5em}{0.3em}{0.05em}\titleformat{\section}{\fontsize{11}{13}\selectfont\bfseries\color{cvPrimary}}{}{0pt}{}\titlespacing*{\section}{0pt}{0.55em}{0.2em}}
\cvmode@ats
\cv@settranslations

\NewDocumentCommand{\cvprofile}{m m m m}{{\cvNameSize\bfseries\color{cvPrimary}\cvscript{#1}\par}{\cvRoleSize\color{cvMuted}\cvscript{#2}\par}{\cvBodySize\color{cvMuted}\cvscript{#3}\par}{\cvBodySize\cvscript{#4}\par}}
\NewDocumentCommand{\cvsection}{m}{\section*{\cvscript{#1}}}
\NewDocumentCommand{\cventry}{m m m m}{\vspace{\cvRoleGap}{\cvRoleSize\bfseries\color{cvPrimary}\cvscript{#1} \hfill \cvscript{#2}\par}{\cvBodySize\color{cvMuted}\cvscript{#3}\par}#4}
\NewDocumentCommand{\cvachievement}{m}{\begin{itemize}[itemsep=\cvBulletGap]\item \cvscript{#1}\end{itemize}}
\NewDocumentCommand{\cvimpact}{m m}{\textbf{\cvscript{#1}}: \cvscript{#2}\par}
\NewDocumentCommand{\cvkpi}{m m}{\textbf{\cvscript{#1}}\hfill \cvscript{#2}\par}
\NewDocumentCommand{\cvproject}{m m m}{\textbf{\cvscript{#1}} --- \cvscript{#2}\par{\color{cvMuted}\cvscript{#3}\par}}
\NewDocumentCommand{\cvhighlight}{m}{\textbf{\cvscript{#1}}\par}
\NewDocumentCommand{\cvskills}{m}{\cvscript{#1}\par}
\hypersetup{colorlinks=false,pdfborder={0 0 0}}
\AtBeginDocument{\cvBodySize}
