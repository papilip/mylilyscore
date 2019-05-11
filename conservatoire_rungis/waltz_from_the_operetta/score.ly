%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% score.ly
%%% Walz from the operetta
%%% Extrait de “La grande Duchesse de Gérolstein”
%%% Jacques Offenbach (1819-1880)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version  "2.19.83"

% utilisation de la tag line numéro 1
setTAGLINEnbl   = 1

\include  "../header-local.ily"
setTITLE        = "Walz from the operetta"
setSUBTITLE     = "Extrait de “La grande Duchesse de Gérolstein”"
setCOMPOSER     = "Jacques Offenbach"
setARRANGER     = "(1819-1880)"

%#(define setREVISION    "0")
%#(define setCOLOR       blue)
#(set-global-staff-size 27)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LA MUSIQUE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

musique = \relative c' <<
    {
      % l'écriture des numéros de mesures
      \include "../../all/score_barnumber.ly"
      \time 3/4
      \include "music.ily"
    }
  >>


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
  \include  "../../all/header-all.ily"
  \markup { \vspace #3 }
  \score {
    \new Staff <<
      \clef "treble"
      \key g \major
      \musique
    >>
  }
}
