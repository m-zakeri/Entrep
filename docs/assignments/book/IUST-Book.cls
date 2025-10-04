
\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{IUST-Book}[13971111 v0.1 Persian book class in XeLaTeX for IUST Books]
             
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass{book}

\newcommand{\original}{1}
\def\booktitle#1{\gdef\@booktitle{#1}}
\def\position#1{\gdef\@position{#1}}
\def\affiliation#1{\gdef\@affiliation{#1}}
\def\translator#1{\renewcommand{\original}{0}\gdef\@translator{#1}}

%% ======================================================


\RequirePackage[paperwidth=17cm, paperheight=24.7cm, twoside=true, footskip=1cm, headheight = 22pt, headsep=5mm, top=3.4cm, bottom=2.5cm, left=2.5cm, right=2.5cm]{geometry}

\usepackage{flafter}
\usepackage[bottom]{footmisc}
%\usepackage{enumerate}
\usepackage{enumitem}
\setlist[itemize]{noitemsep}
\RequirePackage{supertabular}
\RequirePackage{longtable}

% در ورژن جدید زی‌پرشین برای تایپ متن‌های ریاضی، این سه بسته، حتماً باید فراخوانی شود
\RequirePackage{amsthm, amsmath, amssymb, amsfonts}
%\RequirePackage{amssymb, amsmath, amsfonts}
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
\RequirePackage{xcolor}
%\RequirePackage[textfont={it,small},labelfont={small,bf}, sip=1pt]{caption}
\RequirePackage{caption}
\RequirePackage{float}
\RequirePackage{prettyref}
\RequirePackage{xcolor}
\usepackage[utf8]{inputenc}
\usepackage{multicol}
\usepackage{makeidx}

\usepackage[pagebackref=true, colorlinks, linkcolor=blue, citecolor=magenta, urlcolor=cyan] {hyperref}
% چنانچه قصد پرینت گرفتن نوشته خود را دارید، دستور زیر را فعال کنید. 
% در ضمن pagebackref برای نشان دادن شماره صفحه ارجاعات مراجع در بخش bibliography است.
%\usepackage[pagebackref=false]{hyperref}

\usepackage{polyglossia}
\setmainlanguage{farsi}
\setotherlanguage{english}
\usepackage{bidi} % ensures correct RTL sectioning















% ====================================================== Glossaaires
\usepackage[xindy={language=persian,codepage=utf8},toc]{glossaries}
%
\renewcommand\glsnamefont[1]{\rm #1}
\renewcommand{\glossarymark}[1]{\@mkboth{#1}{\@booktitle}}
%
\newglossarystyle{listdotpage}{%
	\glossarystyle{listgroup}
	\renewcommand*{\glossaryentryfield}[5]{%
		\item[\glstarget{##1}{##2}, ##5] \dotfill\space ##3}}
%
\newglossarystyle{listpagedot}{%
	\glossarystyle{listgroup}
	\renewcommand*{\glossaryentryfield}[5]{%
		\item[\glstarget{##1}{##2}] \dotfill\space \rl{, ##5}##3}}
%
\newglossarystyle{notation}{%
	\glossarystyle{list}
	\renewcommand*{\glossaryentryfield}[5]{%
		\item[\parbox{1.3cm}{\LTR{\glstarget{##1}{##2}}}] \hspace{5pt} ##3,\space ##5}}
%
\renewcommand{\glossaryname}{واژه‌نامه فارسی به انگلیسی}
%\renewcommand{\entryname}{\rl{نماد}}
%\renewcommand{\descriptionname}{\rl{توضیح}}
%\renewcommand{\pagelistname}{\rl{صفحه}}
%\setlength{\glsdescwidth}{60pt}
%
\newglossary[epx]{dicep}{epi}{epd}{واژه‌نامه انگلیسی به فارسی}
\newglossary[syx]{symb}{syi}{syd}{فهرست نماد‌ها}
\GlsSetXdyLanguage[dicep]{english}
\GlsSetXdyLanguage[symb]{english}
\makeglossaries
\loadglsentries{./chapters/dic.tex}
%\glsdisablehyper
%\renewcommand\glsdisplayfirst[4]{\textbf{#1}}
%\newcommand\gi[1]{\gls{#1}\index{\glsentrysort{#1}@\glsentrytext{#1}}}
\newcommand\gi[1]{\gls{g:#1}\glslink{ep:#1}{}}
\newcommand\gn[1]{\glsentrytext{g:#1}}
\newcommand\gfirst[1]{\glsreset{g:#1}\gls{g:#1}\glslink{ep:#1}{}}









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
