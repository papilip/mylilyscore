%%%%%%%%%%%%% ALTO %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\new Staff = "Alto"
	\with {
		fontSize			= #taille
		instrumentName		= "Alto"
		shortInstrumentName	= "A. "
	}
	<<
		\new Voice = "Alto" {
			\dynamicUp
			\global
			\musicALTO
		}
	>>
\new Lyrics
	\lyricsto "Alto" {
		\set fontSize		= #taille
		\chantALTO
	}
