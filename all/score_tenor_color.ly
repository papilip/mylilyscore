%%%%%%%%%%%%% TENOR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\new Staff = "Tenor"
	\with {
		%fontSize		= #taille
		instrumentName		= "Ténor"
		shortInstrumentName	= "T. "
		\override InstrumentName	#'color = #couleur
	}
	<<
		\clef bass
		\new Voice = "Tenor" {
			\dynamicUp
			\global
			\bgcolor "(rgb-color 1 1 0.7)"
			\musicTENOR
		}
	>>
\new Lyrics
	\lyricsto "Tenor" {
		%\set fontSize = #taille
		\override LyricText	#'color = #couleur
 		\override LyricHyphen 	#'color = #couleur
		\override LyricExtender	#'color = #couleur
		\chantTENOR
	}
