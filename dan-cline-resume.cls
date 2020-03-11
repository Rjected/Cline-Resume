\ProvidesClass{dan-cline-resume}[2018/09/24 CV class]
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% margin packages
\usepackage[left=0.0984252in, right=0.75cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage[T1]{fontenc}
\usepackage{enumitem}
\usepackage{calc}

% Add qr code support and hyperref
\usepackage{hyperref}
\usepackage{qrcode}

% color definitions
\PassOptionsToPackage{usenames, dvipsnames}{xcolor}
\definecolor{primary}{HTML}{000000}
\definecolor{headings}{HTML}{000000}
\definecolor{seperator}{HTML}{bbbbbb}


% Set font to sans serif (replace with helvetica font)
\usepackage{helvet}
\renewcommand{\familydefault}{\sfdefault}

% set width (for line and header)
\newlength{\resumewidth}
\setlength{\resumewidth}{7.90944882in}

% section seperators
\newcommand{\sectionsep}{
  \color{headings}{
    \vspace{-2mm}
    \rule{1\textwidth}{0.5mm}
    \vspace{-2mm}
  }
}

\newcommand{\subsectionsep}{
  \color{white}{
    \vspace{-2mm}
    \rule{1\textwidth}{0.5mm}
    \vspace{-2mm}
  }
}

\newcommand{\headersep}{
  \color{seperator}{
    \vspace{-2mm}
    \rule{\resumewidth}{0.5mm}
  }
  % !!! IMPORTANT: EDIT THIS VALUE TO MAKE SPACE SO THERE IS NOTHING AWKWARD
  % AT BOTTOM OF RESUME!!!
  \vspace{4mm}
}

% create new section command
\newcommand{\primarysection}[1]{
  \color{headings}{
    \vspace{-3mm}
    \section*{#1}
    \vspace{-1.5\baselineskip\ }
    \sectionsep
  }
}


% descriptors command
\newcommand{\descript}[1]{
  \color{primary}{
    #1
  }
  \vspace{0.5mm}
}

% subheadings command
\newcommand{\runsubsection}[1]{
  \color{primary}{
    \textbf{#1}
  }
}

% location command
\newcommand{\location}[1]{
  \hfill
  #1
  \hfill
}

% Name / title section
\newcommand{\namesection}[4]{
  \begin{minipage}[b]{0.3\textwidth}
    \color{primary}{
      \fontsize{30pt}{36pt}
      \selectfont
      \textbf{#1 #2}
    }
  \end{minipage}
  \hfill
  \begin{minipage}[b]{0.65\textwidth}
    \begin{minipage}[b]{0.45\textwidth}
      \fontsize{18pt}{24pt}
      \selectfont
      \textbf{#3}
    \end{minipage}
  \hfill%
    \begin{minipage}[b]{0.3\textwidth}
      \fontsize{8pt}{10pt}
      \selectfont
      \begin{flushright}
        #4
      \end{flushright}
    \end{minipage}
  \end{minipage}

  \headersep
  \vspace{-4mm}
}

\newcommand{\education}[6]{
  \primarysection{Education}
  \vspace{-6mm}
  \subsection*{\raggedright #1}
  \raggedright{\descript{#2 in #3}}
  \vspace{2mm}
  \location{\\#4 - #5 \vspace{2mm} \\#6}
}

\newcommand{\undergradcourses}[1]{
  \vspace{-2mm}
  \subsubsection*{Undergrad Courses}
  #1 \\
}

\newcommand{\gradcourses}[1]{
  \vspace{-2mm}
  \subsubsection*{Graduate Courses}
  #1 \\
}

\newcommand{\courses}[1]{
  \vspace{2mm}
  \textbf{Courses:}

  #1 \\
}

\newcommand{\talks}[1]{
  \vspace{2mm}
  \textbf{Talks:}

  #1 \\
}

\newcommand{\interests}[1]{
  \vspace{2mm}
  \textbf{Interests:} #1 \\
}

\newenvironment{tightemize}{
  \setlist{nolistsep}
  \begin{itemize}[itemsep=1mm, leftmargin=7mm]
    \raggedright
  }{
  \end{itemize}
}