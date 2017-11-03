%% Note class
%
%% note.cls
%
%% Copyright 2017 pppppass
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
%   README.md
% and an introduction is included as well.
%
% This file cannot be typeset directly. It is recommended to typeset
% with LuaLaTeX.

% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{note}[2017/11/03 Note class]

% Declaration of options
\DeclareOption{english}{\def\note@english{\relax}}
\DeclareOption{nochinese}{\def\note@nochinese{\relax}}
\ProcessOptions\relax

% Pass options
\ifdefined\note@english%
\PassOptionsToPackage{scheme=plain}{ctex}%
\fi

% Load class
\LoadClass[UTF8]{article}

% Load packages
\ifdefined\note@nochinese\else%
\RequirePackage{ctex}%
\fi
\RequirePackage{standalone}
\RequirePackage{geometry}
\RequirePackage{tocbibind}
\RequirePackage{amsmath}
\RequirePackage[backend=biber, url=false, autolang=other]{biblatex}

% Set part numbering
\renewcommand\thepart{\arabic{part}}

% Page layout
\geometry{a4paper, top=1in, bottom=1in, left=1.25in, right=1.25in}

% Page style
\pagestyle{plain}

% Line skips
\setlength\lineskiplimit{3pt}
\setlength\lineskip{3pt}

% Equation display
\allowdisplaybreaks
