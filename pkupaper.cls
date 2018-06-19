% !TeX encoding = UTF-8
% !TeX spellcheck = en_US

%% PKU-style paper class v1.1.1 2018/05/15
%
%% pkupaper.cls
%
%% Copyright 2017--2018 pppppass
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is pppppass
% (lzh2016p@pku.edu.cn).
%
% Lists of contents of this work and modification information can be
% found in
%   pkupaper.manifest.md
% and an introduction is included as well.
%
% This file cannot be typeset directly. When using this file
% by \documentclass{...}, it is recommended to typeset with LuaLaTeX.

% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pkupaper}[2018/05/15 PKU-style paper class v1.1.1]

% Declaration of options
\DeclareOption{english}{\def\pkupaper@english{\relax}}
\DeclareOption{nochinese}{\def\pkupaper@nochinese{\relax}}
\DeclareOption{nobib}{\def\pkupaper@nobib{\relax}}
\ProcessOptions\relax

% Pass options
\PassOptionsToPackage{no-math}{fontspec}
\ifdefined\pkupaper@english%
\PassOptionsToClass{scheme=plain}{ctexart}%
\fi

% Load basic class
\ifdefined\pkupaper@nochinese%
\LoadClass[UTF8, 12pt, twoside]{article}%
\else%
\LoadClass[UTF8, cs4size, twoside]{ctexart}%
\fi

% Load packages
\RequirePackage{ifpdf, ifxetex}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage[defaultsups]{newtxtext}
\RequirePackage{newtxmath}
\RequirePackage{tikz}
\RequirePackage[cleardoublepage = current]{scrextend}
\RequirePackage[titles]{tocloft}
\RequirePackage{caption, subcaption}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{titling}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\ifdefined\pkupaper@nobib%
\else%
\RequirePackage[backend=biber, sorting=nty, url=false]{biblatex}%
\fi

% Footnote circles
\newcommand*\pkupaper@int@circled[1]{%
	\scalebox{0.8}{\tikz[baseline = (char.base)]{
		\node[
			shape = circle, draw = black, minimum size = 1.25em, inner sep = 0pt
		] (char) {#1};
	}}%
}
\renewcommand\thefootnote%
	{\protect\pkupaper@int@circled{\arabic{footnote}}}
\deffootnote{2em}{3.5em}{\thefootnotemark\hspace{0.75em}}

% Set linespread
\linespread{1.39}\selectfont

% Set captions
\DeclareCaptionFont{small}{\small}
\DeclareCaptionLabelSeparator{quad}{\quad}
\captionsetup{font=small, labelsep=quad}

% Set enumrate environments
\setlist{nolistsep}

% tocloft settings
\renewcommand{\numberline}[1]{%
	\settowidth\@tempdimb{#1\hspace{0.5em}}%
	\ifdim\@tempdima<\@tempdimb%
			\@tempdima=\@tempdimb%
	\fi%
	\hb@xt@\@tempdima{\@cftbsnum #1\@cftasnum\hfil}\@cftasnumb%
}

% Page size
\geometry{
	a4paper, includefoot, hmargin = 2.6cm, top = 3cm, bottom = 2.5cm,
	headheight = 1.5cm, headsep = 0.5cm, footskip = 0.75cm
}

% Equation display
\setlength{\abovedisplayskip}{6bp plus 1.5bp minus 3.5bp}
\setlength{\abovedisplayshortskip}{3bp plus 0.75bp minus 1.75bp}
\setlength{\belowdisplayshortskip}{3bp plus 0.75bp minus 1.75bp}
\setlength{\belowdisplayskip}{6bp plus 1.5bp minus 3.5bp}

% Set sectioning format
\titleformat*{\section}{\fontsize{15pt}{15pt}\selectfont\bfseries}
\titlespacing*{\section}{0pt}{20bp plus 1ex minus 0.2ex}{6bp plus 0.2ex}[0pt]
\titleformat*{\subsection}{\fontsize{14pt}{14pt}\selectfont\bfseries}
\titlespacing*{\subsection}{0pt}{12bp plus 1ex minus 0.2ex}{6bp plus 0.2ex}[0pt]
\titleformat*{\subsubsection}{\fontsize{12pt}{12pt}\selectfont\bfseries}
\titlespacing*{\subsubsection}{0pt}{12bp plus 1ex minus 0.2ex}{6bp plus 0.2ex}[0pt]

% Headers and footers
\def\pkupaper@int@setcase#1{%
	\let\MakeUppercase\relax%
	\expandafter\let\csname MakeUppercase \endcsname\relax%
	#1%
}
\fancypagestyle{plain}{%
	\fancyhf{}\renewcommand*{\headrulewidth}{0.75bp}%
	\fancyfoot[C]{\small\normalfont{\thepage}}%
	\fancyhead[CE]{\small\normalfont{\cuniversity{} \cthesisname}}%
	\fancyhead[CO]{\small\normalfont\pkupaper@int@setcase{\titlemark}}%
}%
\pagestyle{plain}

% Commands
\def\cleanthanks{\def\@thanks{}}
