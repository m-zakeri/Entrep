
\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{IUST-Book}[13971111 v0.2 Persian book class in XeLaTeX for IUST Books]
             
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass{book}
%% ======================================================

\RequirePackage[paperwidth=17cm, paperheight=24.7cm, twoside=true, footskip=1cm, headheight = 22pt, headsep=5mm, top=3.4cm, bottom=2.5cm, left=2.5cm, right=2.5cm]{geometry}


% در ورژن جدید زی‌پرشین برای تایپ متن‌های ریاضی، این سه بسته، حتماً باید فراخوانی شود
\RequirePackage{amsthm, amsmath, amssymb, amsfonts}

\usepackage{flafter}
\usepackage[bottom]{footmisc}
%\usepackage{enumerate}
\usepackage{enumitem}
\setlist[itemize]{noitemsep}
\RequirePackage{supertabular}
\RequirePackage{longtable}
\usepackage{thmtools}
%\usepackage{thmbox}
\usepackage{fontspec}
\usepackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage[nottoc]{tocbibind}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
%\RequirePackage{scrlayer}

\RequirePackage{cite}
\RequirePackage{xargs}
\usepackage[x11names,dvipsnames,svgnames,table]{xcolor}
%\RequirePackage[textfont={it,small},labelfont={small,bf}, sip=1pt]{caption}
\RequirePackage{caption}
\RequirePackage{float}
\RequirePackage{prettyref}
\RequirePackage{xcolor}
\usepackage[utf8]{inputenc}
\usepackage{multicol}
\usepackage{makeidx}


\usepackage[unicode=true, pagebackref=true, colorlinks, linkcolor=Blue, citecolor=SpringGreen4, urlcolor=RoyalBlue4, bookmarks=true, linktocpage, breaklinks]{hyperref} %RoyalBlue1 %
% چنانچه قصد پرینت گرفتن نوشته خود را دارید، دستور زیر را فعال کنید. 
% در ضمن pagebackref برای نشان دادن شماره صفحه ارجاعات مراجع در بخش bibliography است.
%\usepackage[pagebackref=false]{hyperref}

















% ====================================================== Glossaaires
% بسته‌ای برای ظاهر شدن «مراجع» و «نمایه» در فهرست مطالب
\usepackage[nottoc]{tocbibind}
% دستورات مربوط به ایجاد نمایه
\usepackage{makeidx}
\makeindex

%\usepackage[xindy={language=persian,codepage=utf8},toc, acronym, nonumberlist=true]{glossaries}
\usepackage[xindy, acronym, nonumberlist=true]{glossaries}
%




% ====================================================== Footnotes

%\RequirePackage[para*,perpage]{manyfoot}
\RequirePackage[para*]{manyfoot}
\SetFootnoteHook{\setLTR\latinfont}%--> must appear immediately before \DeclareNewFootnote 
\DeclareNewFootnote[para]{l}[arabic]
\renewcommand{\extrafootnoterule}{}
\SelectFootnoteRule[0]{extra}
\SetFootnoteHook{\setRTL\persianfont}
\DeclareNewFootnote[para]{r}[arabic]
\SetFootnoteHook{\setRTL}%--> must appear immediately before %\DeclareNewFootnote 
\DeclareNewFootnote[plain]{s}[fnsymbol]

% ====================================================== End of file `nashrbook.sty'.



\newcommand{\original}{1}
\def\booktitle#1{\gdef\@booktitle{#1}}
\def\position#1{\gdef\@position{#1}}
\def\affiliation#1{\gdef\@affiliation{#1}}
\def\translator#1{\renewcommand{\original}{0}\gdef\@translator{#1}}