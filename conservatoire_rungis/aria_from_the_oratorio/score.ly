\version  "2.19.83"
\language "italiano"
#(ly:set-option 'relative-includes #t)

% utilisation de la tag line numéro 1
setTAGLINEnbl = 2

\include    "../header-local.ily"
setTITLE    = "Aria from the oratorio"
setSUBTITLE = "Extrait de “L’enfance du Christ” op. 25"
setCOMPOSER = "Hector Berlioz"
setARRANGER = "(1803-1869)"

%#(define setREVISION    "0")
#(set-global-staff-size 27)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LA MUSIQUE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

musique = \relative do'' <<
    {
      % l'écriture des numéros de mesures
      \include "../../all/score_barnumber.ly"
      % Augmentation de l’espace des mesures
      \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/30)
      \time 3/4
      \include "music.ily"
    }
  >>


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
  \include  "../../all/header-all.ily"
  \markup { \vspace #1 }
  \score {
    \new Staff <<
      \clef "treble"
      \musique
    >>
  }
}
