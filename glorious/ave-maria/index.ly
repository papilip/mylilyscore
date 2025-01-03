\version "2.24.4"

\include "../../all/taglines/tagline-simple.ily"

#(set-default-paper-size "a4" )
#(set-global-staff-size 23 )

\header {
	title = "Ave Maria"
	subtitle = "Je te salue Marie"
	% instrument = ""
	composer = "Benjamin & Thomas Pouzin"
	poet = "© Joy to the World / Rejoyce 2008	"
  % piece = ""
}

global = {
	\key c \major
	\time 4/4

	% la mise en forme des nuances
	% \include "../all/dynamic_text_spanner.ly"

	% l'écriture des numéros de mesures
  \include "../../all/score/barnumber.ily"
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%	les importations
%%%
chord = \chordmode      { \include "chord.ily" }
music = \relative c ''  { \include "music.ily" }
chant = \lyricmode      { \include "chant.ily" }



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%	La partition
%%%%%
\paper {
  system-system-spacing.basic-distance = #15
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \new ChordNames {
        \override ChordName.font-shape = #'italic
        \override ChordName.font-size = #-1
        \frenchChords
        \chord
      }
      \new Staff = "partition" {
          \new Voice = "partition" {
            \global
            \music
          }
      }
      \new Lyrics \lyricsto "partition" {
        \chant
      }
    >>
  }
}
