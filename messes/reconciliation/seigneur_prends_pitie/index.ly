\version "2.22.2"

\include "all/taglines/tagline.ily"

#(set-default-paper-size "a4" )
% #(set-global-staff-size 22 )

\header {
	title = "Messe de la Réconciliation"
	subtitle = "Seigneur, prends pitié"
	composer = \markup {
    \right-column {      
      \teeny {
        \line { Texte : AELF } 
        \line { Musique : Michel WACKENHEIM } 
        \line { © Studio SM }
      }
    }
  }
	poet = \markup { \large { "AL 137" } }
  % piece = "AL 137"
}

global = {
	\key f \major
	\time 4/4

	% l'écriture des numéros de mesures
  % \include "all/score/barnumber.ily"
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%	les importations
%%%

% CHORD
chord	= \chordmode { \include "chord.ily" }

% MUSIC
music	= \relative c'' { \include "music.ily" }

% CHANT
chant = \lyricmode { \include "chant.ily" }



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
      \new Staff = "chant" {
          \new Voice = "chant" {
            \global
            \music
          }        
        }
        \new Lyrics \lyricsto "chant" { 
          \override     LyricText #'self-alignment-X = #-1
          \chant 
        }
    >>
  }
}
