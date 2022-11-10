\version "2.22.2"

\include "all/taglines/tagline-simple.ily"
\include "numero_des_couplets.ily"

#(set-default-paper-size "a4" )
% #(set-global-staff-size 22 )

\header {
	title = "Ave Regina Pacis"
	subtitle = "Paroles : Chanoinesse d’Azille"
	% instrument = ""
	% composer = ""
	% poet = ""
  % piece = ""
}

global = {
	\time 6/8
  
	% la mise en forme desnuances
	% \include "../all/dynamic_text_spanner.ly"

	% l'écriture des numéros de mesures
  \include "all/score/barnumber.ily"
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%	les importations
%%%
% REFRAIN
% refrain_chord = \transpose c d { \chordmode   { \include "refrain_chord.ily" } }
% refrain_music = \transpose c d { \relative c '{ \include "refrain_music.ily" } }
refrain_music = \relative c'' { \include "refrain_music.ily" }
refrain_chant = \lyricmode   { \include "refrain_chant.ily" }

% COUPLETS
% couplets_chord   = \transpose c d { \chordmode   { \include "couplets_chord.ily" } }
% couplets_music   = \transpose c d { \relative c '{ \include "couplets_music.ily" } }
% couplets_chant_a = \lyricmode   { \include "couplets_chant_a.ily" }
% couplets_chant_b = \lyricmode   { \include "couplets_chant_b.ily" }
% couplets_chant_c = \lyricmode   { \include "couplets_chant_c.ily" }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%	La partition
%%%%%
\paper {
  system-system-spacing.basic-distance = #15
}

\bookpart {
  \markup \rounded-box Refrain
	\score {
		\new ChoirStaff <<
      % \new ChordNames { 
        % \override ChordName.font-shape = #'italic
        % \override ChordName.font-size = #-1
        % \frenchChords
        % \refrain_chord 
      % }
      \new Staff = "refrain" {
          \new Voice = "refrain" {
            \global
            \refrain_music
          }        
      }
      \new Lyrics \lyricsto "refrain" { 
        \refrain_chant
      }
    >>
  }
  \markup \rounded-box "Refrain un ton et demi plus bas"
	\score {
		\new ChoirStaff <<
      % \new ChordNames { 
        % \override ChordName.font-shape = #'italic
        % \override ChordName.font-size = #-1
        % \frenchChords
        % \refrain_chord 
      % }
      \new Staff = "refrain" {
          \new Voice = "refrain" {
            \global
            \transpose g e { \refrain_music }
          }        
      }
      \new Lyrics \lyricsto "refrain" { 
        \refrain_chant
      }
    >>
  }
  % \markup \rounded-box Couplets
	% \score {
	% 	\new ChoirStaff <<
  %     \new ChordNames { 
  %       \override ChordName.font-shape = #'italic
  %       \override ChordName.font-size = #-1
  %       \frenchChords
  %       \couplets_chord 
  %     }
  %     \new Staff = "couplets" {
  %       \new Voice = "couplets" {
  %         \global
  %         \couplets_music
  %       }       
  %     } 
  %     \new Lyrics \lyricsto "couplets" { 
  %       \override     LyricText #'self-alignment-X = #-1
  %       \set stanza = "1. " \couplets_chant_a 
  %     }
  %     \new Lyrics \lyricsto "couplets" {
  %       \override     LyricText #'self-alignment-X = #-1
  %       \override StanzaNumber.font-shape = #'italic
  %       \override LyricText.font-shape = #'italic
  %       \set stanza = "2. "  \couplets_chant_b
  %     }
  %     \new Lyrics \lyricsto "couplets" { 
  %       \override     LyricText #'self-alignment-X = #-1
  %       \set stanza = "3. " \couplets_chant_c
  %     }
  %   >>
  % }
}
