\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{atscv}[2026/04/29 v0.1.1 ATS-safe CV class]

\RequirePackage{kvoptions}
\SetupKeyvalOptions{family=atscv,prefix=atscv@}
\DeclareStringOption[modern]{mode}
\DeclareStringOption[en]{lang}
\DeclareBoolOption[true]{atsstrict}
\DeclareBoolOption[false]{tagging}
\ProcessKeyvalOptions*

\LoadClass[11pt]{article}

\RequirePackage{atscv}
\RequirePackage{atscv-lang}
\RequirePackage{ifthen}

\AtBeginDocument{%
  \ifatscv@atsstrict
    \atscvsetup{mode=\atscv@mode,lang=\atscv@lang,atsstrict=true,tagging=\ifatscv@tagging true\else false\fi}%
  \else
    \atscvsetup{mode=\atscv@mode,lang=\atscv@lang,atsstrict=false,tagging=\ifatscv@tagging true\else false\fi}%
  \fi
}

\endinput
