%%%%%%%%%%%%% SOPRANO %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\new Staff = "Soprano I"
	\with {
		fontSize			= #taille
		instrumentName		= "Soprano I."
		shortInstrumentName	= "I. "
	}
	<<
		\new Voice = "Soprano I" {
			\dynamicUp
			\global
			\musicSOPRANOA
		}
	>>
\new Lyrics
	\lyricsto "Soprano I" {
		\set fontSize		= #taille
		\chantSOPRANOA
	}
