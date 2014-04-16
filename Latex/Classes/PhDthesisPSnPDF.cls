%-------------------------------------------------------------------
% PhDthesis version 2 style file by Jakob Suckale, 2007
% based on CUEDthesis version 1 by Harish Bhanderi 2002
% Modificaciones para FI-UNAM por Jesús Velázquez y Marco Ruiz, 2014
%-------------------------------------------------------------------

%-------------------------- identification ---------------------
%\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Latex/Classes/PhDthesisPSnPDF}[2007/09/06 v2 PhD thesis class]


%If you want to use a Book style document then uncomment the following 3 lines and comment the above 8 report style lines:
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\ifx\pdfoutput\undefined
   \LoadClass[dvips, a4paper]{book}  % CAMBIAR "a4paper" POR "letterpaper" PARA TAMAÑO CARTA
\else
   \LoadClass[pdftex, a4paper]{book}
\fi

%:------------------------- PAQUETES  -----------------------
\usepackage{amssymb, amsmath, amsbsy, amsfonts}    % ECUACIONES Y SÍMBOLOS MATEMÁTICOS
\usepackage[utf8]{inputenc}              % CODIFICACIÓN UTF8, PARA Ñs Y ACENTOS Y DEMÁS
\usepackage{listings}                    % PERMITE AGREGAR CÓDIGO DE LENGUAJES  DE PROGRAMACIÓN (DOCUMENTACIÓN EN GOOGLE)
\usepackage{emptypage}                   % QUITA LOS ENCABEZADOS Y PIES DE PÁGINA EN LAS HOJAS VACÍAS PRODUCIDAS POR LA IMPRESIÓN A DOS CARAS
%\usepackage{wrapfig}                    % to include figure with text wrapping around it
\usepackage[margin=10pt,font=small,labelfont=bf]{caption} % for improved layout of figure captions with extra margin, smaller font than text
\usepackage[bf,SL,BF]{subfigure}         % Permite crear figuras múltiples
\usepackage{makeidx}                     % Contiene los macros para indexar en un glosario
%\usepackage[style=list,toc,number=none]{glossary}
\usepackage{mathdots}                    % para el comando \iddots
\usepackage{mathrsfs}                    % para formato de letra en ecuaciones
\raggedbottom                            %Evita que LaTeX distribuya los espacios en blanco sobre la página, en lugar de eso los envía al fondo
\usepackage{fancyhdr}                    % for better header layout
\usepackage{eucal}
\usepackage[spanish,mexico]{babel}
\usepackage{color}
\usepackage[perpage]{footmisc}
\usepackage[round, sort, numbers]{natbib}
\usepackage{ifthen}
\usepackage{multicol} % for pages with multiple text columns, e.g. References
\setlength{\columnsep}{20pt} % space between columns; default 10pt quite narrow
\usepackage[nottoc]{tocbibind} % correct page numbers for bib in TOC, nottoc suppresses an entry for TOC itself
%\usepackage{nextpage}
\usepackage{titlesec}
%\usepackage[siunitx]{circuitikz} %para circuitos
%\usepackage[makeroom]{cancel}%Para cancelar términos en modo matemático
%\usepackage{cleveref}           %COMO UNA FORMA DE REFERENCIAR TABLAS, ECUACIONES, ETC. -->http://mirror.utexas.edu/ctan/macros/latex/contrib/cleveref/cleveref.pdf


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%            REDEFINIENDO EL FORMATO DE LOS CAPITULOS             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\bigrule}{\titlerule[0.5mm]}
\titleformat{\chapter}[display] % CAMBIAMOS EL FORMATO DE LOS CAPÍTULOS
%{\bfseries\Huge} % por defecto se usarán caracteres de tamaño \Huge en negrita
{\Huge} % por defecto se usarán caracteres de tamaño \Huge en negrita
{% contenido de la etiqueta
\titlerule % línea horizontal
\filleft % texto alineado a la derecha
\Large\chaptertitlename\ % "Capítulo" o "Apéndice" en tamaño \Large en lugar de \Huge
\Large\thechapter} % número de capítulo en tamaño \Large
{0mm} % espacio mínimo entre etiqueta y cuerpo
{\filleft} % texto del cuerpo alineado a la derecha
[\vspace{0.5mm} \bigrule] % después del cuerpo, dejar espacio vertical y trazar línea horizontal gruesa


%:-------------------------- Glossary/Abbrev./Symbols -----------------------
\usepackage[intoc]{nomencl} % load nomencl extension; include in TOC
%\nomrefpage % to include page numbers after abbrevations
\renewcommand{\nomname}{Glossary} % rename nomenclature
\renewcommand{\nomlabel}[1]{\textbf{#1}} % make abbreviations bold
\makenomenclature % used to be \makeglossary
\newcommand{\g}{\footnote{For all abbreviations see the glossary on page \pageref{nom}.}} % type "\g" to refer to glossary

% used to be for sorting into categories:
%\renewcommand\nomgroup[1]{%
%  \ifthenelse{\equal{#1}{A}}{%
%   \item[\textbf{Roman Symbols}] }{%             A - Roman
%    \ifthenelse{\equal{#1}{G}}{%
%     \item[\textbf{Greek Symbols}]}{%             G - Greek
%      \ifthenelse{\equal{#1}{R}}{%
%        \item[\textbf{Superscripts}]}{%              R - Superscripts
%          \ifthenelse{\equal{#1}{S}}{%
%           \item[\textbf{Subscripts}]}{{%             S - Subscripts
%	    \ifthenelse{\equal{#1}{X}}{%
%	     \item[\textbf{Other Symbols}]}{{%    X - Other Symbols
%	    \ifthenelse{\equal{#1}{Z}}{%
%	     \item[\textbf{Acronyms}]}%              Z - Acronyms
%              			{{}}}}}}}}}}


%:-------------------------- PDF/PS setup -----------------------

%if you use a macTeX 2008 or later, use the ifpdf package
\usepackage{ifpdf}

%if you use an older version, uncomment these lines:
%\newif \ifpdf
%    \ifx \pdfoutput \undefined
        % for running latex
%        \pdffalse
%    \else
        % for running pdflatex
%        \pdfoutput = 1    % positive value for a PDF output
                          % otherwise a DVI
%        \pdftrue
%\fi



\ifpdf
%-->
%--> Google.com search "hyperref options"
%--> 
%--> http://www.ai.mit.edu/lab/sysadmin/latex/documentation/latex/hyperref/manual.pdf
%--> http://www.chemie.unibas.ch/~vogtp/LaTeX2PDFLaTeX.pdf 
%--> http://www.uni-giessen.de/partosch/eurotex99/ oberdiek/print/sli4a4col.pdf
%--> http://me.in-berlin.de/~miwie/tex-refs/html/latex-packages.html
%-->
    \usepackage[ pdftex, plainpages = false, pdfpagelabels, 
                 pdfpagelayout = OneColumn, % display single page, advancing flips the page - Sasa Tomic
                 bookmarks,
                 bookmarksopen = true,
                 bookmarksnumbered = true,
                 breaklinks = true,
                 linktocpage,
                 pagebackref,
                 colorlinks = true,
                 linkcolor = blue,
                 urlcolor  = blue,
                 citecolor = red,
                 anchorcolor = green,
                 hyperindex = true,
                 hyperfigures
                 ]{hyperref} 
    \usepackage[pdftex]{graphicx}
    \DeclareGraphicsExtensions{.png, .jpg, .pdf}

    \pdfcompresslevel=9
    %\graphicspath{{ThesisFigs/PNG/}{ThesisFigs/PDF/}{ThesisFigs/}}
\else
    \usepackage[ dvips, 
                 bookmarks,
                 bookmarksopen = true,
                 bookmarksnumbered = true,
                 breaklinks = true,
                 linktocpage,
                 pagebackref,
                 colorlinks = true,
                 linkcolor = blue,
                 urlcolor  = blue,
                 citecolor = red,
                 anchorcolor = green,
                 hyperindex = true,
                 hyperfigures
                 ]{hyperref}

    %\usepackage{epsfig}
    \usepackage{graphicx}
    \DeclareGraphicsExtensions{.eps, .ps}
    %\graphicspath{{ThesisFigs/EPS/}{ThesisFigs/}}
\fi



%:-------------------------- page layout -----------------------

%A4 settings
\ifpdf
   \pdfpageheight=297mm
   \pdfpagewidth=210mm
\else
   \setlength{\paperheight}{297mm}
   \setlength{\paperwidth}{210mm}
\fi

\setlength{\hoffset}{0.00cm}
\setlength{\voffset}{0.00cm}

%: Uncomment this secion for two-sided printing
% ------------------------------
\setlength{\oddsidemargin}{1.5cm}
\setlength{\evensidemargin}{0cm}
\setlength{\topmargin}{1mm}
\setlength{\headheight}{1.36cm}
\setlength{\headsep}{1.00cm}
\setlength{\textheight}{20.84cm}
\setlength{\textwidth}{14.5cm}
\setlength{\marginparsep}{1mm}
\setlength{\marginparwidth}{3cm}
\setlength{\footskip}{2.36cm}


%: Uncomment this secion for one-sided printing
% taken from the original file, but with the first two lanes modified
% ------------------------------
%\setlength{\evensidemargin}{1.9cm} % was 1.96cm in original
%\setlength{\oddsidemargin}{-0.001cm} % was -0.54cm in original file
%\setlength{\topmargin}{1mm}
%\setlength{\headheight}{1.36cm}
%\setlength{\headsep}{1.00cm}
%\setlength{\textheight}{20.84cm}
%\setlength{\textwidth}{14.5cm}
%\setlength{\marginparsep}{1mm}
%\setlength{\marginparwidth}{3cm}
%\setlength{\footskip}{2.36cm}


%: section below defines fancy page layout options
% ------------------------------
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\MakeUppercase{\thechapter. #1 }}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}
\fancyhf{}
%\fancyhead[RO]{\bfseries\rightmark}
%\fancyhead[LE]{\bfseries\leftmark}
\fancyhead[RO]{\rightmark}
\fancyhead[LE]{\leftmark}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0.1pt}



\addtolength{\headheight}{0.5pt}
\fancypagestyle{plain}{
  \fancyhead{}
  \renewcommand{\headrulewidth}{0pt}
}





%:-------------------------- title page layout -----------------------

% starts roman page numbering until chapter 1
% important to avoid two pages numbered 1 and 2 which may cause bad links
% bug: cover i + back side ii and then numbering restarts with i; should be iii
\renewcommand{\thepage}{\roman{page}}

% ******************************************************************************
% **************************** Macro Definitions *******************************
% ******************************************************************************
% These macros are used to declare arguments needed for the
% construction of the title page and other preamble.

% The year and term the degree will be officially conferred
\newcommand{\@degreedate}{}
\newcommand{\degreedate}[1]{\renewcommand{\@degreedate}{#1}}

% The full (unabbreviated) name of the degree
\newcommand{\@degree}{}
\newcommand{\degree}[1]{\renewcommand{\@degree}{#1}}

% The name of your department(eg. Engineering, Maths, Physics)
\newcommand{\@dept}{}
\newcommand{\dept}[1]{\renewcommand{\@dept}{#1}}

% The name of your college (eg. King's)
\newcommand{\@college}{}
\newcommand{\college}[1]{\renewcommand{\@college}{#1}}

% The name of your University
\newcommand{\@university}{}
\newcommand{\university}[1]{\renewcommand{\@university}{#1}}

% Defining the crest
\newcommand{\@escudouniversidad}{}
\newcommand{\escudouniversidad}[1]{\renewcommand{\@escudouniversidad}{#1}}

\newcommand{\@escudofacultad}{}
\newcommand{\escudofacultad}[1]{\renewcommand{\@escudofacultad}{#1}}

%Definiendo al director de tesis:
\newcommand{\@director}{}
\newcommand{\director}[1]{\renewcommand{\@director}{#1}}

%Definiendo el lugar
\newcommand{\@lugar}{}
\newcommand{\lugar}[1]{\renewcommand{\@lugar}{#1}}

%Definiendo la portada
\newif\ifportada

% Submission Text
\newcommand{\submissiontext}{This dissertation is submitted for the degree of }

% keywords (These keywords will appear in the PDF meta-information
% called `pdfkeywords`.)
\newcommand{\@keywords}{}
\newcommand{\keywords}[1]{\renewcommand{\@keywords}{#1}}

% subjectline (This subject will appear in the PDF meta-information
% called `pdfsubject`.)
\newcommand{\@subject}{}
\newcommand{\subject}[1]{\renewcommand{\@subject}{#1}}

% These macros define an environment for front matter that is always 
% single column even in a double-column document.
\newenvironment{alwayssingle}{%
       \@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
       \else\newpage\fi}
       {\if@restonecol\twocolumn\else\newpage\fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%            PORTADA de la UNAM              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\maketitle}{%
\begin{alwayssingle}
\begin{center}
\thispagestyle{empty}
%% Barra izquierda - Escudos
\hskip -2cm
\begin{minipage}[c][10cm][s]{3cm}
  \begin{center}
    \ifportada
        \includegraphics[height=2.6cm]{Latex/Classes/Escudos/unam_azul_5x5cm}\\[10pt]
        \hskip2pt\colorvrule{Azul}{2.5pt}{13cm}
        \hskip -0.4mm
        \colorvrule{Oro}{1pt}{13cm}\\[10pt]
        \includegraphics[height=2.6cm]{Latex/Classes/Escudos/fi_azul}
    \else
        \includegraphics[height=2.6cm]{Latex/Classes/Escudos/unam_negro_5x5cm}\\[10pt]
        \hskip2pt\vrule width2.5pt height13cm
        \hskip1mm
        \vrule width1pt height13cm\\[10pt]
        \includegraphics[height=2.6cm]{Latex/Classes/Escudos/fi_negro}
    \fi
    
  \end{center}
\end{minipage}\quad
%% Barra derecha - Títulos
\begin{minipage}[c][9.5cm][s]{11cm}
  \begin{center}
    % Barra superior
    {\large \scshape Universidad Nacional Autónoma de México}
    \vspace{.3cm}
    \ifportada
        %\hrule height2.5pt
        \colorhrule{Azul}{2.5pt}
        \vspace{.1cm}
        %\hrule height1pt
        \colorhrule{Oro}{1pt}
    \else
        \hrule height2.5pt
        \vspace{.1cm}
        \hrule height1pt
    \fi
    \vspace{.3cm}
    {\scshape  Facultad de Ingeniería}

    \vspace{.3cm}


    % Título del trabajo
    \vspace{3cm}

    {\Large \scshape {\@title}}

    \vspace{3cm}

    % Tipo de trabajo
    \makebox[8cm][s]{\Huge T E S I S}\\[8pt]
    QUE PARA OBTENER EL TÍTULO DE:\\[5pt]
    \textbf{{\@degree}}\\[40pt]
    PRESENTA:\\[5pt]
    \textbf{{\@author}}

    \vspace{2cm}

    {\small DIRECTOR DE TESIS:\\ {\@director}}

    \vspace{0.5cm}

    %{\small CODIRECTOR DE TESIS:\\ en caso de que aplique}

    \vspace{1.5cm}

    {\@lugar}{, }{\@degreedate}

  \end{center}
\end{minipage}

\end{center}
\null\vfill
\end{alwayssingle}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%:-------------------------- front matter layout -----------------------

% DEDICATION
%
% The dedication environment makes sure the dedication gets its
% own page and is set out in verse format.

\newenvironment{dedication}
{\begin{alwayssingle}
  \pagestyle{empty}
  \vspace*{1.5cm}
  {\large{}}
  \vspace{0.5cm}
  \begin{flushright}\itshape}
{\end{flushright} \end{alwayssingle}}


% ACKNOWLEDGEMENTS
%
% The acknowledgements environment puts a large, bold, centered
% "Acknowledgements" label at the top of the page. The acknowledgements
% themselves appear in a quote environment, i.e. tabbed in at both sides, and
% on its own page.

\newenvironment{acknowledgements}
{\pagestyle{empty}
\begin{alwayssingle}
\vspace*{1.5cm}
{\chapter*{Reconocimientos}}
\vspace{0.5cm}}
{\end{alwayssingle}}

% The acknowledgementslong environment puts a large, bold, centered
% "Acknowledgements" label at the top of the page. The acknowledgement itself
% does not appears in a quote environment so you can get more in.

\newenvironment{acknowledgementslong}
{\pagestyle{empty}
\begin{alwayssingle}
\vspace*{1.5cm}
{\chapter*{Reconocimientos}}
\vspace{0.5cm}}
{\end{alwayssingle}}

%ABSTRACT
%
%The abstract environment puts a large, bold, centered "Abstract" label at
%the top of the page. The abstract itself appears in a quote environment,
%i.e. tabbed in at both sides, and on its own page.

\newenvironment{abstracts} {\begin{alwayssingle} \pagestyle{empty}
  \begin{center}
  \vspace*{1.5cm}
  {\chapter*{Resumen}}
  \end{center}
  \vspace{0.5cm}}
{\end{alwayssingle}}

%The abstractlong environment puts a large, bold, centered "Abstract" label at
%the top of the page. The abstract itself does not appears in a quote
%environment so you can get more in.

\newenvironment{abstractslong} {\begin{alwayssingle} \pagestyle{empty}
  \begin{center}
  \vspace*{1.5cm}
  {\chapter*{Resumen}}
  \end{center}
  \vspace{0.5cm}}
{\end{alwayssingle}}

%The abstractseparate environment is for running of a page with the abstract
%on including title and author etc as required to be handed in separately

\newenvironment{abstractseparate} {\begin{alwayssingle} \pagestyle{empty}
  \vspace*{-1in}
 \begin{center}
    { \Large {\bfseries {\@title}} \par}
    {{\large \vspace*{1ex} \@author} \par}
{\large \vspace*{1ex}
    {{UNAM} \par}
    {{Facultad de Ingeniería} \par}
\vspace*{1ex}
    {{\it \submittedtext} \par}
    {\it {\@degree} \par}
\vspace*{2ex}
    {\@degreedate}}
  \end{center}}
{\end{alwayssingle}}

%Statement of originality if required

\newenvironment{declaration} {\begin{alwayssingle} \pagestyle{empty}
  \begin{center}
  \vspace*{1.5cm}
  {\chapter*{Declaración de autenticidad}}
  \end{center}
  \vspace{0.5cm}}
{\vspace{1.5cm}\flushright{\@author. \@lugar, \@degreedate}\end{alwayssingle}}


%:-------------------------- page numbers: roman+arabic -----------------------

% ROMANPAGES
%
% The romanpages environment set the page numbering to lowercase roman one
% for the contents and figures lists. It also resets
% page-numbering for the remainder of the dissertation (arabic, starting at 1).

%\newenvironment{romanpages}
%{
%	\setcounter{page}{1}
%	\renewcommand{\thepage}{\roman{page}}
%} % close romanpage env't

{\newpage\renewcommand{\thepage}{\arabic{page}}\setcounter{page}{1}}