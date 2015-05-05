%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% kspbook.cls                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               %
% Buch Klasse für               %
% A5 Schriftenreihe.            %
%                               %
% 2011-07-27     Marco Berghoff %
%                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kspbook}[2011/07/27 Standard KSP book class]

\LoadClass[fontsize=10pt, parskip=half,DIV=calc,
bibliography=totoc,%index=totoc
]{scrbook}

%%%
% Define Options
\RequirePackage{etoolbox}
\newbool{KSPcrop}%
\setbool{KSPcrop}{false}%
\DeclareOption{crop}{\setbool{KSPcrop}{true}}
\ProcessOptions\relax

\RequirePackage{cmap}      % create searchable PDF files
\RequirePackage{lmodern}   % font replacement for cm
\RequirePackage{microtype}

%%%
% setup page
\KOMAoptions{paper=A4, pagesize, headlines=1.1, headsepline}
% \setlength{\paperwidth}{170mm}
% \setlength{\paperheight}{240mm}
\typearea[8mm]{15} %8mm BCOR, DIV14

\RequirePackage{graphicx}

%%%
% head, foot
\RequirePackage[%
  headsepline,      % Linie unter der Kopfzeile
  automark,         % automatische Aktualisierung der Kolumnentitel
  nouppercase,      % Grossbuchstaben verhindern
  %markuppercase    % Grossbuchstaben erzwingen
  %markusedcase     % vordefinierten Stil beibehalten
  komastyle,        % Stil von Koma Script
  %standardstyle,   % Stil der Standardklassen
]{scrpage2}
\pagestyle{scrheadings}
\ohead[\pagemark]{\pagemark}
\ihead[]{\headmark}
\chead[]{}
\ofoot[]{}
\ifoot[]{}
\cfoot[]{}

\setkomafont{pageheadfoot}{\small\usekomafont{pagenumber}}


%Set part and chpater pagestyle to empty: without head
\renewcommand*{\titlepagestyle}{empty}
\renewcommand*{\partpagestyle}{empty}
\renewcommand*{\chapterpagestyle}{empty}
\renewcommand*{\indexpagestyle}{empty}

\KOMAoptions{DIV=last}

%caption
\setkomafont{captionlabel}{\sffamily\bfseries} % seriflos fett
\setcapindent{0em}                             % keinen Einzug ab der 2. Zeile

% Hurenkinder und Schusterjungen verhindern
\clubpenalty10000
\widowpenalty10000
\displaywidowpenalty10000
% Fußnoten über mehrere Seiten verhindern
%\interfootnotelinepenalty10000

\ifbool{KSPcrop}{ % Scale to A4 and set crop marker.
  \RequirePackage[frame,a4,center]{crop}
}{}
