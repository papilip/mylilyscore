%%%%%%%%%%%%% SOPRANO II %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\new Staff = "Soprano II"
	\with {
		fontSize			= #taille
		instrumentName		= "Soprano II."
		shortInstrumentName	= "II. "
	}
	<<
		\new Voice = "Soprano II" {
			\dynamicUp
			\global
			\musicSOPRANOB
		}
	>>
\new Lyrics
	\lyricsto "Soprano II" {
		\set fontSize		= #taille
		\chantSOPRANOB
	}
