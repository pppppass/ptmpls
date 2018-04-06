% !TeX encoding = UTF-8
% !TeX spellcheck = en_US

%% Note class v1.1.0 2018/04/06
%
%% note.cls
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
%   note.manifest.md
% and an introduction is included as well.
%
% This file cannot be typeset directly. When using this file
% by \documentclass{...}, it is recommended to typeset with LuaLaTeX.

% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{note}[2018/04/06 Note class v1.1.0]

% Declaration of options
\DeclareOption{english}{\def\note@english{\relax}}
\DeclareOption{nochinese}{\def\note@nochinese{\relax}}
\ProcessOptions\relax

% Pass options
\ifdefined\note@english%
\PassOptionsToClass{scheme=plain}{ctexart}%
\fi

% Load class
\ifdefined\note@nochinese%
\LoadClass[UTF8, 12pt]{article}%
\else%
\LoadClass[UTF8, cs4size]{ctexart}%
\fi

% Load packages
\RequirePackage{standalone}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{tocbibind}
\RequirePackage{amsmath}
\RequirePackage[backend=biber, url=false, autolang=other]{biblatex}

% Page layout
\geometry{a4paper, top=1in, bottom=1in, left=1.25in, right=1.25in}

% Page style
\pagestyle{plain}

% Set linespread
\linespread{1.2}\selectfont

% Line skips
\setlength\lineskiplimit{3pt}
\setlength\lineskip{3pt}

% Set font size
\titleformat*{\section}{\fontsize{15pt}{15pt}\selectfont\bfseries}
\titlespacing*{\section}{0pt}{20bp plus 1ex minus 0.2ex}{6bp plus 0.2ex}[0pt]
\titleformat*{\subsection}{\fontsize{14pt}{14pt}\selectfont\bfseries}
\titlespacing*{\subsection}{0pt}{12bp plus 1ex minus 0.2ex}{6bp plus 0.2ex}[0pt]
\titleformat*{\subsubsection}{\fontsize{12pt}{12pt}\selectfont\bfseries}
\titlespacing*{\subsubsection}{0pt}{12bp plus 1ex minus 0.2ex}{6bp plus 0.2ex}[0pt]

% Equation display
\allowdisplaybreaks
