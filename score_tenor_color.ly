%%%%%%%%%%%%% TENOR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\new Staff = "Tenor"
	\with {
		%fontSize			= #taille
		instrumentName		= "Ténor"
		shortInstrumentName	= "T. "
		\override InstrumentName	#'color = #couleur
	}
	<<
		%\clef "G_8"
		\clef bass
		\new Voice = "Tenor" {
			%\autoBeamOff
			%\dynamicUp
			\global
			\bgcolor "(rgb-color 1 1 0.7)"
			\musicTENOR
		}
	>>
\new Lyrics
	\lyricsto "Tenor" {
		%\set fontSize		= #taille
		\chantTENOR
	}
