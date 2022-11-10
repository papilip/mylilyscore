\version "2.22.2"

\include "all/taglines/tagline.ily"

#(set-default-paper-size "a4" )
% #(set-global-staff-size 22 )

\header {
	title = "Je vous salue Marie"
	% subtitle = ""
	% instrument = ""
	composer = "Père Louis"
	% poet = ""
  % piece = ""
}

global = {
	\key f \major
	\time 4/4
  
	% la mise en forme desnuances
	% \include "../all/dynamic_text_spanner.ly"

	% l'écriture des numéros de mesures
  \include "all/score/barnumber.ily"
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%	les importations
%%%

% CHORD
% chord	= \chordmode { \include "chord.ily" }

% MUSIC
music	= \relative c '{ \include "music.ily" }

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
      % \new ChordNames { 
      %   \override ChordName.font-shape = #'italic
      %   \override ChordName.font-size = #-1
      %   \frenchChords
      %   \chord 
      % }
      \new Staff = "chant" 
        % \with {
        %   \override StaffGrouper.staff-staff-spacing.padding = #0
        %   \override StaffGrouper.staff-staff-spacing.basic-distance = #1
        % }
        {
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
