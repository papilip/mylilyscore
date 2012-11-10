%%%%%%%%%%%%% SOPRANO %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\new Staff = "Soprano"
	\with {
		fontSize			= #taille
		instrumentName		= "Soprano"
		shortInstrumentName	= "S. "
	}
	<<
		\new Voice = "Soprano" {
			\global
			\musicSOPRANO
		}
	>>
\new Lyrics
	\lyricsto "Soprano" {
		\set fontSize		= #taille
		\chantSOPRANO
	}
