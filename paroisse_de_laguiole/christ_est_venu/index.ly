\version "2.22.2"

\include "all/taglines/tagline-simple.ily"
% \include "numero_des_couplets.ily"

#(set-default-paper-size "a4" )
#(set-global-staff-size 22 )

\header {
	title = "Christ est venu"
	% subtitle = ""
	% instrument = ""
	% composer = ""
	% poet = "Annie Garcin"
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
% MUSIQUE
music_a = \relative c'  { \include "music.ily" }
music_b = \relative c'' { \include "music.ily" }
chant   = \lyricmode    { \include "chant.ily" }



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%	La partition
%%%%%
\paper {
  system-system-spacing.basic-distance = #15
}

\bookpart {
  \markup \rounded-box Assemblée
	\score {
		\new ChoirStaff <<
      % \new ChordNames { 
      %   \override ChordName.font-shape = #'italic
      %   \override ChordName.font-size = #-1
      %   % \frenchChords
      %   \refrain_chord 
      % }
      \new Staff = "music" {
          \new Voice = "music" {
            \global
            \music_a
          }        
      }
      \new Lyrics \lyricsto "music" { 
        \chant
      }
    >>
  }
  \markup \rounded-box "À l’octave"
	\score {
		\new ChoirStaff <<
      % \new ChordNames { 
      %   \override ChordName.font-shape = #'italic
      %   \override ChordName.font-size = #-1
      %   % \frenchChords
      %   \music_chord 
      % }
      \new Staff = "music" {
          \new Voice = "music" {
            \global
            \music_b
          }        
      }
      \new Lyrics \lyricsto "music" { 
        \chant
      }
    >>
  }
}
