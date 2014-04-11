
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nous compressons les mesures vides et voulons une barre horizontale
\compressFullBarRests
\override MultiMeasureRest.expand-limit 	= #3

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% La numérotation des mesures
% \override Score.BarNumber.break-visibility	= #'#(#t #t #t)
\override Score.BarNumber.break-visibility	= #'#(#f #t #t)

% aligne à gauche de la barre
\override Score.BarNumber.self-alignment-X	= #LEFT

%\override Score.BarNumber.padding		= #2.75

% mets le numéros de mesure en italique et les mets en rouge
\override Score.BarNumber.font-shape	= #'italic
\override Score.BarNumber.color		= #red

% Diminue la taille du numéro
\override Score.BarNumber.font-size		= #-4

% Mettre un jolie rond entourant les numéros de mesures
%\override Score.BarNumber #'stencil	= #(make-stencil-circler 0.1 0.05 ly:text-interface::print)



% Gestion du doigté
%\override Score.Fingering #'font-shape	= #'italic
\override Score.Fingering.color		= #blue

% Diminue la taille du numéro
\override Score.Fingering.font-size		= #-7
