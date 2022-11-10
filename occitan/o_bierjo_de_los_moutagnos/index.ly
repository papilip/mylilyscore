\version "2.22.2"

revision		= "0.1"
\include "all/taglines/tagline.ily"

#(set-default-paper-size "a4")
#(set-global-staff-size 22 )


\header {
	title = "Ô Bierjo de los mountagnos"
	subtitle = "Ô vierge de nos montagnes"
	% instrument = ""
	% composer = ""
	% poet = ""
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

% REFRAIN
refrain_music	= \relative c''  { \include "refrain_music.ily" }
refrain_chant	= \lyricmode     { \include "refrain_chant.ily" }
% COUPLET
couplet_music	= \relative c'   { \include "couplet_music.ily"  }
couplet_chant_a = \lyricmode   { \include "couplet_chant_1.ily" }
couplet_chant_b = \lyricmode   { \include "couplet_chant_2.ily" }
couplet_chant_c = \lyricmode   { \include "couplet_chant_3.ily" }
couplet_chant_d = \lyricmode   { \include "couplet_chant_4.ily" }
couplet_chant_e = \lyricmode   { \include "couplet_chant_5.ily" }
couplet_chant_f = \lyricmode   { \include "couplet_chant_6.ily" }



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%	La partition
%%%%%
\bookpart {
	\score {
		\new ChoirStaff <<
      \new Staff = "Refrain" 
        \with {
          % fontSize			= #taille
          instrumentName		= "Refrain"
          shortInstrumentName	= "R/ "
        }
        {
          \new Voice = "Refrain" {
            \dynamicUp
            \global
            \refrain_music
          }        
        }
        \new Lyrics
          \lyricsto "Refrain" {
            \refrain_chant
          }
    >>
  }
	\score {
		\new ChoirStaff <<
      \new Staff = "Couplet" 
        \with {
          % fontSize			= #taille
          instrumentName		= "Couplet"
          shortInstrumentName	= "C/ "
        }
        {
          \new Voice = "Couplet" {
            \dynamicUp
            \global
            \time 3/4
            \couplet_music
          }        
        }
        \new Lyrics \lyricsto "Couplet" { 
          \set stanza = "1. " \couplet_chant_a }
        \new Lyrics \lyricsto "Couplet" {
          \override StanzaNumber.font-shape = #'italic
          \override LyricText.font-shape = #'italic
          \set stanza = "2. "  \couplet_chant_b }
        \new Lyrics \lyricsto "Couplet" { 
          \set stanza = "3. " \couplet_chant_c }
        \new Lyrics \lyricsto "Couplet" {
          \override StanzaNumber.font-shape = #'italic
          \override LyricText.font-shape = #'italic
          \set stanza = "4. "  \couplet_chant_d }
        \new Lyrics \lyricsto "Couplet" { 
          \set stanza = "5. " \couplet_chant_e }
        \new Lyrics \lyricsto "Couplet" {
          \override StanzaNumber.font-shape = #'italic
          \override LyricText.font-shape = #'italic
          \set stanza = "6. "  \couplet_chant_f }
    >>
	}
}
