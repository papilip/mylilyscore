\version  "2.19.83"
\language "italiano"
#(ly:set-option 'relative-includes #t)

% Les champs suivants sont centrés
my_dedication   = ""
my_title        = ""
my_subtitle     = "Doigtés de la trompette"
my_subsubtitle  = ""
my_instrument   = ""

% Les champs suivants sont alignés sur le bord gauche
my_poet         = ""
my_meter        = ""

% Les champs suivants sont alignés sur le bord droit
my_composer     = ""
my_arranger     = ""

#(set-global-staff-size 36)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LA MUSIQUE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

lyric_doigte_num  = \lyricmode { \include "lyric_doigte_num.ily" }
lyric_bemol       = \lyricmode { \include "lyric_bemol.ily" }
lyric_diese       = \lyricmode { \include "lyric_diese.ily" }

staff_bemol = \relative do' {
  % Augmentation de l’espace des mesures
  \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/30)
  \time 4/4
  \include "staff_bemol.ily"
}
staff_diese = \relative do {
  % Augmentation de l’espace des mesures
  \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/30)
  \time 4/4
  \include "staff_diese.ily"
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
    oddFooterMarkup   = \include  "../../all/tagline_double.ily"
    evenFooterMarkup  = \oddFooterMarkup
  }
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% Page ! ♭ avec ⓵⓶⓷
  \bookpart {
    \header {
      my_subsubtitle  = "Gamme des ♭ avec ⓵⓶⓷"
      \include  "../../all/header_all.ily"
    }
    \score {
      \new Staff {
        \new Voice {
          \clef "treble"
          \staff_bemol
        }
        \addlyrics {
          \override LyricText.font-size = #-1
          \lyric_doigte_num
        }
        \addlyrics {
          \override LyricText.font-size = #-3
          \lyric_bemol
        }
      }
    }
  }
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% Page 2 ♯ avec ⓵⓶⓷
  \bookpart {
    \header {
      my_subsubtitle  = "Gamme des ♯ avec ⓵⓶⓷"
      \include  "../../all/header_all.ily"
    }
    \score {
      \new Staff {
        \new Voice {
          \clef "treble"
          \staff_diese
        }
        \addlyrics {
          \override LyricText.font-size = #-1
          \lyric_doigte_num
        }
        \addlyrics {
          \override LyricText.font-size = #-3
          \lyric_diese
        }
      }
    }
  }
}
