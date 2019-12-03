\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zebracorns}[2017/05/15 Zebracorn Class Document]
\LoadClass[12pt]{scrartcl}


%This makes the font helvetica
\usepackage{helvet}
\renewcommand\familydefault{\sfdefault}
\usepackage{url}
\urlstyle{same}
\setlength{\parskip}{1em}
\linespread{1.3}
\setlength\parindent{0pt}


%adjust spacing between section headers and paragraphs
\RedeclareSectionCommand[
  beforeskip=1.5\baselineskip,
  afterskip=.25\baselineskip]{section}
\RedeclareSectionCommand[
  beforeskip=-.75\baselineskip,
  afterskip=.25\baselineskip]{subsection}
\RedeclareSectionCommand[
  beforeskip=-.5\baselineskip,
  afterskip=.25\baselineskip]{subsubsection}


\usepackage[letterpaper, portrait, margin=1in]{geometry}
\usepackage{tabulary}
\usepackage{ulem}
\usepackage[autostyle]{csquotes}
\usepackage{hyperref}

%this part lets you import images
\usepackage{float}
\usepackage{tocloft}
\usepackage{graphicx,float,wrapfig}
\usepackage{background}
\backgroundsetup{contents={}}

%putting code in documents
\usepackage{listings}
\lstset{frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  showstringspaces=false,
  columns=flexible,
  basicstyle={\small\ttfamily},
  numbers=none,
  breaklines=true,
  breakatwhitespace=true,
  tabsize=3
}

\usepackage{import}
\usepackage{chngcntr}
\counterwithin{figure}{section}

\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    urlcolor=cyan,
    pdfpagemode=FullScreen,
}
\def\@maketitle{%
\backgroundsetup{
  contents={
  }
}

  \newpage
  \null
  \vskip 2em%
  \begin{center}%

  \thispagestyle{empty}
  \let \footnote \thanks
    {\vspace{-1.25cm} \huge \@title \par}%
    \vskip 1.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    {\textit \@date}%

    \begin{figure}[h]
  		\centering
  		\includegraphics[width=15cm]{Logo-Stacked-Mono.png}
  	\end{figure}
    %\vspace{515pt}
  	%\small
      \par
    A Zebracorn Labs Paper
    \newpage
  \end{center}%

  }

  \newcommand{\toc}{%
  \backgroundsetup{
    contents={
    }
  }
    \tableofcontents
    \newpage
  }
  \newcommand{\watermark}{
    \backgroundsetup{
      scale=1,
      color=black,
      opacity=0.35,
      angle=0,
      contents={
        \includegraphics[width=\paperwidth,height=\paperheight]{../Logo-Watermark.png} %look at google drive images -watermark??
      }
    }
  }
  \newcommand{\maketitlesubtitle}
  {
  \begin{center}%

  \thispagestyle{empty}
  \let \footnote \thanks
    { \huge \@title \par}%
    { \small \@subtitle \par}%
    {\large
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    {\large \@date}%

    \begin{figure}[h]
  		\centering
      \vspace{-1cm}
  		\includegraphics[width=15cm]{\dcpath Logo-Stacked-Mono}
  	\end{figure}
    %\vspace{515pt}
  	%\small
      \par
    A Zebracorn Labs Paper
    \newpage
  \end{center}%
  }

\iffalse
 ----  Basic Document Structure -----
\def\dcpath{../../(i.e. number of levels up to class file)}\documentclass{../zebracorns}
\title{paper title}
\author{autnor}
\date{date_published}
\begin{document}
  \maketitle
\end{document}




------ Commands: ------
--Sections--
 \section{name}             1.
 \label{labelname}
  \subsection{name}          1.1.
  \label{name}
    \subsection{name}          1.1.1.
    \label{name}

--Lists--
%bullted list
\begin{itemize}
  \item List all the things!
\end{itemize}

%numbered list
\begin{enumerate}
  \item List all the things!
\end{enumerate}

--Footnotes--
\footnote{Code}

--URLs--
\url{url! use \ before any #'s'}
\href{mailto:leadership@team900.org}{leadership@team900.org}

--Code Block--
\begin{lstlisting}
  First line of code
  second line of code
\end{lstlisting}

--Paragraphs--
 lorem ipsum sum\par
 or empty line between paragraphs

 -- Break into seperate files --
   \input{filename}

-- Block Quotes --
 \blockquote[quote author]{body of quote}

 -- Include Image --
 \includegraphics[width=3cm, height=4cm]{file}

 \begin{figure}[H] % h says put image exactly where it is in code
   \centering %center alignment, default is left
   \includegraphics[width=0.75\linewidth, angle=90]{file} %make width 3/4 of line and rotate 90 degrees
   \caption{captian text, show me under picture}
   \label{fig:screenshot} %this means it will show up in ToC
 \end{figure}

%2 figures next to each other, each takes ~half the page
 \begin{figure}[!htb]
  \begin{minipage}{0.48\textwidth}
    \centering
    \includegraphics[width=1\linewidth, angle=-90]{photos/figure2-1.jpg} %make width 3/4 of line
    \caption{Note how the electrical tape peels away, leaving metal exposed. The wire underneath contorts over time as well.}
    \label{fig-2-1} %this means it will show up in ToC
  \end{minipage}\hfill
  \begin {minipage}{0.48\textwidth}
    \centering
    \includegraphics[width=1\linewidth, angle=-90]{photos/figure2-2.jpg} %make width 3/4 of line
    \caption{Figure 2.1: Note how the electrical tape peels away, leaving metal exposed. The wire underneath contorts over time as well.}
    \label{fig-2-2} %this means it will show up in ToC
  \end{minipage}
 \end{figure}

\fi