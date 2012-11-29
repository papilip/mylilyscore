%%%%%%%%%%%%% ALTO %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\new Staff = "Alto"
	\with {
		%fontSize		= #taille
		instrumentName		= "Alto"
		shortInstrumentName	= "A. "
		\override InstrumentName	#'color = #couleur
	}
	<<
		\new Voice = "Alto" {
			\dynamicUp
			\global
			\bgcolor "(rgb-color 1 1 0.7)"
			\musicALTO
		}
	>>
\new Lyrics
	\lyricsto "Alto" {
		%\set fontSize = #taille
		\override LyricText #'color = #couleur
		\chantALTO
	}
