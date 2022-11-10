\version "2.22.2"

footer = "Mélodie d’après un cantique basque et paroles d’après un chant scout du Père Doncœurs (1927)"
% \include "all/taglines/tagline.ily"
\include "all/taglines/tagline_footer.ily"
\include "toto.ily"

#(set-default-paper-size "a4" )
% #(set-global-staff-size 22 )

\header {
	title = "Hymne à Saint Michel"
	subtitle = "Note de départ : La (A)"
	% instrument = ""
	% composer = ""
	% poet = ""
  % piece = "Note de départ : La (A)"
}

global = {
	\key c \major
	\time 4/4
  \clef "G_8"

	% la mise en forme desnuances
	% \include "../all/dynamic_text_spanner.ly"

	% l'écriture des numéros de mesures
  \include "all/score/barnumber.ily"
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%	les importations
%%%

% CHORD
chord	= \chordmode { \include "chord.ily" }

% MUSIC
music	= \relative c  { \include "music.ily" }

% COUPLETS
\include "chant_a.ily" % \chant_a est défini dans chant_a.ily
\include "chant_b.ily" % \chant_b est défini dans chant_b.ily
\include "chant_c.ily" % \chant_c est défini dans chant_c.ily



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%	La partition
%%%%%
% \paper { ragged-last-bottom = ##f }
\paper {
  system-system-spacing.basic-distance = #22

  % score-system-spacing =
  %   #'((padding . 1)
  %      (basic-distance . 12)
  %      (minimum-distance . 6)
  %      (stretchability . 12))
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
      \new Staff = "couplets" 
        \with {
          \override StaffGrouper.staff-staff-spacing.padding = #0
          \override StaffGrouper.staff-staff-spacing.basic-distance = #1
        }
        {
          \new Voice = "couplets" {
            \global
            \music
          }        
        }
        \new Lyrics \lyricsto "couplets" { 
          \override     LyricText #'self-alignment-X = #-1
          \set stanza = "1. " \chant_a }
        \new Lyrics \lyricsto "couplets" {
          \override     LyricText #'self-alignment-X = #-1
          \override StanzaNumber.font-shape = #'italic
          \override LyricText.font-shape = #'italic
          \set stanza = "2. "  \chant_b }
        \new Lyrics \lyricsto "couplets" { 
          \override     LyricText #'self-alignment-X = #-1
          \set stanza = "3. " \chant_c }
    >>
  }
}
