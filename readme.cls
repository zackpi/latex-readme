\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{readme}[2018/01/28 ReadMe Format Class by Zachary Pitcher]
\LoadClass[12pt]{article}	% imitate an article

% General type formatting / sizing
\renewcommand{\familydefault}{\sfdefault}
\RequirePackage[notmath]{sansmathfonts}
\RequirePackage{tabularx}
\setlength{\fboxsep}{10pt}
\setlength{\fboxrule}{0.4pt}

% A minipage with a frame around it
\newsavebox{\FramedMiniBox}
\newenvironment{FramedMiniPage}[1]{
	\begin{lrbox}{\FramedMiniBox}
		\begin{minipage}{#1}
}{
		\end{minipage}
	\end{lrbox}
	\fbox{\usebox{\FramedMiniBox}}
}

% Generate a header, remove the footer
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\lhead{\scriptsize{\textsc{readme}}}
\chead{\scriptsize{\@title}}
\rhead{\scriptsize{\@author}}
\lfoot{} \cfoot{} \rfoot{}
\renewcommand{\headrulewidth}{0.4pt}

% Format for a question. Template for the "question" environments below
\newenvironment{QuestionTemplate}[2]{
	\par
	\begin{minipage}{\textwidth}
		\noindent \Large{\textbf{#1} } \small{#2}
		\begin{flushright}
			\begin{FramedMiniPage}{.9\textwidth}
}{
			\end{FramedMiniPage}
		\end{flushright} 
	\end{minipage}
	\vspace{15pt}
}

% NOW
% Use this command to generate a preamble documenting the author, title, and date of last revision
\newcommand{\now}{
	\raggedright
	\begin{tabular}{l l}
		\textit{@title} 	& \@title \\                           
		\textit{@author} 	& \@author \\
		\textit{@version} 	& \@date \\    
	\end{tabular}\vspace*{20pt}
}

% WHAT
% Describe what the project does
\newenvironment{what}{
	\begin{QuestionTemplate}{WHAT}{\@title\ does}
}{\end{QuestionTemplate}}

% WHY
% Discuss the motivations behind the project
\newenvironment{why}{
	\begin{QuestionTemplate}{WHY}{\@author\ made this}
}{\end{QuestionTemplate}}

% HOW
% Teach the user how to use the project
\newenvironment{how}{
	\begin{QuestionTemplate}{HOW}{to use \@title}
}{\end{QuestionTemplate}}

% WHO
% Give a short bio of the author
\newenvironment{who}{
	\begin{QuestionTemplate}{WHO}{\@author\ is}
}{\end{QuestionTemplate}}

% WHENCE
% Document the version history of the project
\newcommand{\TempStretch}{1.0}
\newenvironment{whence}{
	\renewcommand{\TempStretch}{\arraystretch}
	\renewcommand{\arraystretch}{1.5}
	\begin{QuestionTemplate}{WHENCE}{did \@title\ develop}
		\begin{tabular}{@{} p{.075\textwidth} >{\raggedright}p{.25\textwidth} p{.6\textwidth} @{}}
			& Date & Changelog \\\hline
}{
		\end{tabular}
	\end{QuestionTemplate}
	\renewcommand{\arraystretch}{\TempStretch}
}

% CONT
% Continue a previous page's box that was overfull
\newenvironment{cont}{
	\begin{QuestionTemplate}{}{}
\textellipsis}{
	\end{QuestionTemplate}
}

\endinput