\version "2.22.2"

% \include "all/taglines/tagline-simple.ily"

#(set-default-paper-size "a4" )
#(set-global-staff-size 33 )

\header {
	title = "Clé de SOL"
	% subtitle = ""
	% instrument = ""
	% composer = ""
	% poet = ""
  % piece = ""
}

global = {
	% \key c \major
	\time 4/4
  
	% la mise en forme desnuances
	% \include "../all/dynamic_text_spanner.ly"

	% l'écriture des numéros de mesures
  \include "all/score/barnumber.ily"
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%	les importations
%%%
music = \relative c '{ \include "music.ily" }
chant = \lyricmode   { \include "chant.ily" }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%	La partition
%%%%%
% \paper {
%   system-system-spacing.basic-distance = #15
% }

\bookpart {
  \markup \rounded-box "sol -- do"
	\score {
		\new ChoirStaff <<
      \new Staff = "refrain" {
          \new Voice = "refrain" {
            \global
            \music
          }        
      }
      \new Lyrics \lyricsto "refrain" { 
        \chant
      }
    >>
  }
}
