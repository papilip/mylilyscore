%%%%%%%%%%%%% BASSE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\new Staff = "Basse"
	\with {
		fontSize			= #taille
		instrumentName		= "Basse"
		shortInstrumentName	= "B. "
	}
	<<
		\clef bass
		\new Voice = "Basse" {
			\dynamicUp
			\global
			\musicBASSE
		}
	>>
\new Lyrics
	\lyricsto "Basse" {
		\set fontSize	= #taille
		\chantBASSE
	}
