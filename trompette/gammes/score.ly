\version  "2.19.83"
\language "français"
#(ly:set-option 'relative-includes #t)

% Les champs suivants sont centrés
my_dedication   = ""
my_title        = ""
my_subtitle     = "Gammes pour la trompette"
my_subsubtitle  = ""
my_instrument   = ""

% Les champs suivants sont alignés sur le bord gauche
my_poet         = ""
my_meter        = ""

% Les champs suivants sont alignés sur le bord droit
my_composer     = ""
my_arranger     = ""

%{ #(set-global-staff-size 36) %}
\include "../../all/markups/brass_finger/brass_finger.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LA MUSIQUE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{ lyric_bemol       = \lyricmode { \include "lyric_bemol.ily" } %}
%{ lyric_bemol_horiz = \lyricmode { \include "lyric_bemol_horiz.ily" } %}
%{ lyric_diese       = \lyricmode { \include "lyric_diese.ily" } %}
%{ lyric_diese_horiz = \lyricmode { \include "lyric_diese_horiz.ily" } %}

staff_do = \relative do' {
  % Augmentation de l’espace des mesures
  %{ \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/30) %}
  %{ \time 4/4 %}
  \include "staff.ily"
}
staff_re = \relative do' {
  \transpose re do {
    \include "staff.ily"
  }
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
    oddFooterMarkup   = \include  "../../all/taglines/tagline_double.ily"
    evenFooterMarkup  = \oddFooterMarkup
  }
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% Page 1 ♭ avec doigté seul
  \bookpart {
    \header {
      %{ my_subsubtitle  = "Gamme des ♭ avec le doigté seul" %}
      \include  "../../all/headers/header_all.ily"
    }
    \score {
      \new Staff {
        \new Voice {
          %{ \clef "treble" %}
          \staff_do
          \staff_re
        }
        \addlyrics {
          %{ \override LyricText.font-size = #-3 %}
          %{ \lyric_bemol_horiz %}
        }
      }
    }
  }
}
