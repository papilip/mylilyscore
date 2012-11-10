%%%%%%%%%%%%% BASSE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\new Staff = "Basse"
	\with {
		fontSize			= #taille
		instrumentName		= "Basse"
		shortInstrumentName	= "B. "
		%\override InstrumentName	#'color = #couleur
	}
	<<
		\clef bass
		\new Voice = "Basse" {
			\autoBeamOff
			\dynamicUp
			\global
			%\bgcolor "(rgb-color 1 1 0.7)"
				\musicBASSE
		}
	>>
\new Lyrics
	\lyricsto "Basse" {
		\set fontSize	= #taille
		\chantBASSE
	}
