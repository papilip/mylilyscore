%%%%%%%%%%%%% SOPRANO II %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\new Staff = "Soprano II"
	\with {
		fontSize			= #taille
		instrumentName		= "Soprano II."
		shortInstrumentName	= "II. "
		\override InstrumentName	#'color = #couleur
	}
	<<
		\new Voice = "Soprano II" {
			\dynamicUp
			\global
			\bgcolor "(rgb-color 1 1 0.7)"
			\musicSOPRANOB
		}
	>>
\new Lyrics
	\lyricsto "Soprano II" {
		%\set fontSize = #taille
		\override LyricText #'color = #couleur
		\chantSOPRANOB
	}
