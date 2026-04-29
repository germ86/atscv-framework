\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{atscv}[2026/04/29 v0.1.0 ATS-safe CV class]

\RequirePackage{kvoptions}
\SetupKeyvalOptions{family=atscv,prefix=atscv@}
\DeclareStringOption[modern]{mode}
\DeclareStringOption[en]{lang}
\DeclareBoolOption[true]{atsstrict}
\ProcessKeyvalOptions*

\LoadClass[11pt]{article}

\RequirePackage{atscv}
\RequirePackage{atscv-lang}
\RequirePackage{ifthen}

\newcommand\atscv@mode{\atscv@mode}
\newcommand\atscv@lang{\atscv@lang}

\AtBeginDocument{%
  \atscvsetup{mode=\atscv@mode,lang=\atscv@lang,atsstrict=\ifatscv@atsstrict true\else false\fi}%
}

\endinput
