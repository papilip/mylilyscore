\version  "2.19.83"
#(ly:set-option 'relative-includes #t)

% Les champs suivants sont centrés
my_dedication   = ""
my_title        = ""
my_subtitle     = "Dies Irae"
my_subsubtitle  = ""
my_instrument   = ""

% Les champs suivants sont alignés sur le bord gauche
my_poet         = ""
my_meter        = ""

% Les champs suivants sont alignés sur le bord droit
my_composer     = \markup { Hector Berlioz \italic \teeny	{ (1803-1869) } }
my_arranger     = ""

\include "../header_local.ily"
#(set-global-staff-size 26)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LA MUSIQUE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
music = \relative do' {
  \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/15)
  % l'écriture des numéros de mesures
  \include "../../all/score_barnumber.ly"
  % Augmentation de l’espace des mesures
  %{ \once \override Score.RehearsalMark.self-alignment-X = #LEFT %}
  %{ \mark \markup \bold \italic \teeny "Allegretto grazioso" %}
  \time 6/8
  \key mib \major
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
    \markup { \vspace #0.5 }
    \score {
      \new Staff {
        \new Voice {
          \clef "treble"
          \music
        }
      }
    }
  }
}
