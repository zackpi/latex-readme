\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{readme}[2018/01/26 ReadMe Formatter by Zachary Pitcher]

\LoadClass{article}
\RequirePackage{fancyhdr}

\newcommand{\head}{
	\pagestyle{fancy}
	\lhead{\scriptsize{\textsc{README}}}
	\chead{\scriptsize{\@title}}
	\rhead{\scriptsize{\@author}}
	\renewcommand{\headrulewidth}{0.5pt}
}

\newcommand{\now}{
	{\flushleft
	\begin{tabular}{l l}
		\textit{@title} 	& \@title \\                           
		\textit{@author} 	& \@author \\
		\textit{@version} 	& \@date \\    
	\end{tabular}}\\\\
}

\newcommand{\what}{
	UNDEFINED \\
}

\newcommand{\why}{
	UNDEFINED \\
}

\newcommand{\how}{
	UNDEFINED \\
}

\newenvironment{then}{
	\begin{tabular}{l l l}
		Version & Date & Changes \\\hline
}{
	\end{tabular}
}


\endinput