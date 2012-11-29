%%%%%%%%%%%%% SOPRANO avec deux couplets %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\new Staff = "Soprano"
	\with {
		fontSize			= #taille
		instrumentName		= "Soprano"
		shortInstrumentName	= "S. "
	}
	<<
		\new Voice = "Soprano" {
			\dynamicUp
			\global
			\musicSOPRANO
		}
	>>
\new Lyrics \lyricsto "Soprano" {
		\set stanza = #"1. "
		\set fontSize			= #taille
		\chantSOPRANOun
	}
\new Lyrics \lyricsto "Soprano" {
		\set stanza = #"2. "
		\set fontSize			= #taille
		\override LyricText #'font-shape 	= #'italic
		\chantSOPRANOdeux
	}
