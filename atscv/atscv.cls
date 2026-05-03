\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{atscv}[2026/05/03 v0.3.1 modular ATS-safe CV class]
\RequirePackage{iftex}
\ifLuaTeX\else
  \ClassError{atscv}{atscv requires LuaLaTeX}{Switch compiler to LuaLaTeX (Overleaf: Menu > Compiler > LuaLaTeX).}
\fi
\RequirePackage{kvoptions}
\SetupKeyvalOptions{family=atscv,prefix=atscv@}
\DeclareStringOption[general]{schema}
\DeclareStringOption[blue]{color}
\DeclareStringOption[modern]{style}
\DeclareStringOption[standard]{layout}
\DeclareStringOption[en]{lang}
% legacy aliases
\DeclareStringOption[]{mode}
\DeclareStringOption[]{colorscheme}
\ProcessKeyvalOptions*
\ifx\atscv@mode\@empty\else\renewcommand{\atscv@style}{\atscv@mode}\fi
\ifx\atscv@colorscheme\@empty\else\renewcommand{\atscv@color}{\atscv@colorscheme}\fi
\LoadClass[11pt]{article}
\RequirePackage{atscv-base}
\RequirePackage{atscv-schema-\atscv@schema}
\RequirePackage{atscv-color-\atscv@color}
\RequirePackage{atscv-style-\atscv@style}
\RequirePackage{atscv-layout-\atscv@layout}
\RequirePackage{atscv-lang-\atscv@lang}
\RequirePackage{atscv}
\endinput
