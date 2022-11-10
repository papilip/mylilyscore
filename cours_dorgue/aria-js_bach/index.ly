\version "2.22.2"

revision		= "0.1"
\include "all/taglines/tagline.ily"

#(set-default-paper-size "a4")
#(set-global-staff-size 24 )


\header {
	title = "Aria de J.S. Bach"
	subtitle = "Extrait de la suite en Ré pour orchestre à corde"
	% instrument = " pour Guitare"
	% composer = "Trad."
	% poet = "Trad."

	}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%	les importations
%%%

% MUSIC
musicDROIT	= \relative c''	 { \include "music_droit.ily" }
musicGAUCHE = \relative c 	 { \include "music_gauche.ily" }



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%	La partition
%%%%%
\bookpart {
	\score {
		\new PianoStaff <<
			\new Staff = "droit" {
        \include "all/score/barnumber.ily"
				\key d \major
				\musicDROIT
			}
			\new Staff = "gauche" {
        % \include "all/score/barnumber.ily"
				\key d \major
				\clef bass
				\musicGAUCHE
			}
		>>
	}
}
