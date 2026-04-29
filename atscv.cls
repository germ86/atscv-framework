\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{atscv}[2026/04/29 v0.1.0 ATS-safe multilingual CV class]

\RequirePackage{iftex}
\ifLuaTeX
\else
  \ClassError{atscv}{atscv requires LuaLaTeX}{Please compile with lualatex.}
\fi

\RequirePackage{kvoptions}
\SetupKeyvalOptions{family=atscv,prefix=atscv@}
\DeclareStringOption[en]{lang}
\DeclareStringOption[modern]{mode}
\ProcessKeyvalOptions*

\LoadClass[11pt,a4paper]{article}

\RequirePackage[a4paper,margin=1.8cm]{geometry}
\RequirePackage{fontspec}
\RequirePackage{xcolor}
\RequirePackage[hidelinks,unicode]{hyperref}
\RequirePackage{enumitem}
\RequirePackage{xparse}

\RequirePackage{atscv}
\RequirePackage{atscv-lang}

\AtBeginDocument{%
  \atscvsetlang{\atscv@lang}%
  \atscvsetmode{\atscv@mode}%
}
