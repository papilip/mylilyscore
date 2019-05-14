\version  "2.19.83"
#(ly:set-option 'relative-includes #t)

% Les champs suivants sont centrés
my_dedication   = ""
my_title        = ""
my_subtitle     = "Walz from the operetta"
my_subsubtitle  = "Extrait de “La grande Duchesse de Gérolstein”"
my_instrument   = ""

% Les champs suivants sont alignés sur le bord gauche
my_poet         = ""
my_meter        = ""

% Les champs suivants sont alignés sur le bord droit
my_composer     = \markup { Jacques Offenbach \italic \teeny	{ (1819-1880) } }
my_arranger     = ""

\include "../header_local.ily"
#(set-global-staff-size 23)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LA MUSIQUE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
music = \relative do' {
  % l'écriture des numéros de mesures
  \include "../../all/score_barnumber.ly"
  % Augmentation de l’espace des mesures
  \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/30)
  \time 3/4
  \include "music.ily"
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\book {
  \paper {
    print-page-number = ##t
    print-first-page-number = ##t
    tagline           = ##f
    oddHeaderMarkup   = \markup \null
    evenHeaderMarkup  = \markup \null
    oddFooterMarkup   = \include  "../../all/tagline_simple.ily"
    evenFooterMarkup  = \oddFooterMarkup
  }
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% Page 1
  \bookpart {
    \header {
      \include  "../../all/header_all.ily"
    }
    \markup { \vspace #1 }
    \score {
      \new Staff {
        \new Voice {
          \clef "treble"
          \key sol \major
          \music
        }
      }
    }
  }
}
