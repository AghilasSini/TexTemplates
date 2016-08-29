\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cnrs}[12/11/2012, v1.0]

\LoadClass[10pt]{beamer}

% Gestion des caractères accentués
	\usepackage[utf8]{inputenc}
	\usepackage[french]{babel}

	\usepackage{graphicx}
	\usepackage{beamerthemesplit}

% 
% On charge des thèmes par défaut que l on va surcharger par la suite
%
	\usefonttheme{default}
	\usecolortheme{default}
	\useinnertheme[shadow=true]{rounded}
	\useoutertheme{default}

%
% Couleurs personnaliées CNRS
%
	\definecolor{light-blue}{HTML}{329FBB} % Bleu clair
	\definecolor{dark-blue}{HTML}{00294A} % Bleu foncé

%
% Couleur de premier plan
%
	\setbeamercolor{structure}{fg=dark-blue, bg=white}

%
% Couleur du texte
%
	\setbeamercolor{normal text}{fg=dark-blue,bg=white} % Couleur principale  du texte
	\setbeamercolor{frametitle}{fg=dark-blue,bg=white} % Couleur des titres de slides
	\setbeamercolor{itemize item}{fg=light-blue} % Couleur des puces des items

%
% Supprime le menu de navigation
%
	\beamertemplatenavigationsymbolsempty

%
% Logo CNRS en haut à gauche de toutes les slides
%
	\usebackgroundtemplate{\includegraphics[width=1.5cm]{theme_cnrs_logo_mini.png}}

%
% Premiere page avec grand fond d écran CNRS
%
	\defbeamertemplate*{title page}{title cnrs}[1][]
	{
		\parbox[t][\paperheight]{\paperwidth}{
			\vspace{.61\paperheight}
			\hspace{37pt}
			\usebeamerfont{subtitle}\insertinstitute\par
			\bigskip
			\hspace{80pt}
			\parbox[t]{.6\paperwidth}{
				\usebeamerfont{title}\bf{\inserttitle}\par
			}
		}
	}

%
% Entete des slides :
% Pager en haut à gauche sous le logo CNRS
%
	\defbeamertemplate*{headline}{header cnrs}
	{
		\vspace{50pt}
		\hspace{15pt}
		\makebox[0pt][l]{P. \color{light-blue}\insertpagenumber\,/\,\insertpresentationendpage\,}
	}

%
% Pied de page des slides
%
	\defbeamertemplate*{footline}{footline cnrs}
	{
		\parbox{\paperwidth}
		{
			\vspace*{-20pt}
			\hspace{20pt}
			\tiny\color{dark-blue}\insertauthor\,\color{light-blue}\textbar\,\color{dark-blue}\insertinstitute
		}

	}

%
% Liste à puces
%
	\defbeamertemplate*{itemize item}{box}{\scriptsize\raise1.25pt\hbox{\donotcoloroutermaths$\square$}}
	\defbeamertemplate*{itemize subitem}{box}{\tiny\raise1.5pt\hbox{$\blacktriangleright$}}
	\defbeamertemplate*{itemize subsubitem}{box}{\tiny\raise1.5pt\hbox{\donotcoloroutermaths$\bullet$}}

%
% ToC - Sommaire
%
	\setbeamertemplate{sections/subsections in toc}[square]
	\setbeamercolor{section in toc}{fg=dark-blue}
        \setbeamercolor{subsection in toc}{fg=light-blue}
	

%
% Corps des slides de contenu
%
	% titre des slides
	\setbeamertemplate{frametitle}
        {
		\vspace*{-40pt}
		\begin{centering}
		\bf{\insertframetitle}\par
		\end{centering}
	}

	% Blocks normaux
	\setbeamercolor{block title}{fg=white,bg=dark-blue} % Couleur titre block
	\setbeamercolor{block body}{fg=dark-blue,bg=light-blue!5} % Couleur contenu block

