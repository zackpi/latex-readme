\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{readme}[2018/01/26 ReadMe Formatter by Zachary Pitcher]

\setlength{baselineskip}{2pt}
\fontfamily{pcr}

\newcommand{\head}{ \noindent \textsc{readme} \hspace{\stretch{1}} \@title \hspace{\stretch{1}} \@author}
\newcommand{\doc}{ \hline\vspace{15pt} \\
	\begin{tabular}{l l}
		\textit{@title} 	& \@title \\                           
		\textit{@author} 	& \@author \\
		\textit{@version} 	& \@date \\    
	\end{tabular} \\}



\endinput