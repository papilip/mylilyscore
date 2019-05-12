\version  "2.19.83"
\language "italiano"
#(ly:set-option 'relative-includes #t)

% utilisation de la tag line numéro 1
setTAGLINEnbl = 2

% Les champs suivants sont centrés
setDEDICATION   = ""
setTITLE        = "Doigté de la trompette"
setSUBTITLE     = "Gamme des ♭"
setSUBSUBTITLE  = ""
setINSTRUMENT   = ""

% Les champs suivants sont alignés sur le bord gauche
setPOET         = ""
setMETER        = ""

% Les champs suivants sont alignés sur le bord droit
setCOMPOSER     = ""
setARRANGER     = ""

%#(define setREVISION    "0")
#(set-global-staff-size 38)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LA MUSIQUE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

lyric_bemol = \lyricmode { \include "lyric_bemol.ily" }

staff_bemol = \relative do' <<
    {
      % Augmentation de l’espace des mesures
      \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/30)
      \time 4/4
      \include "staff_bemol.ily"
    }
  >>


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LA PARTITION des #
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
  \include  "../../all/header-all.ily"
  % \markup { \vspace #1 }
  \score {
    \new Voice {
      \clef "treble"
      \staff_bemol
    }
    \addlyrics {
      \lyric_bemol
    }
  }
}
