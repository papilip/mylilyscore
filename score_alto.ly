%%%%%%%%%%%%% ALTO %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\new Staff = "Alto"
	\with {
		fontSize			= #taille
		instrumentName		= "Alto"
		shortInstrumentName	= "A. "
	}
	<<
		\new Voice = "Alto" {
			\global
			\musicALTO
		}
	>>
\new Lyrics
	\lyricsto "Alto" {
		\set fontSize		= #taille
		\chantALTO
	}
