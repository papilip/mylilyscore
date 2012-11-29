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
\new Lyrics \lyricsto "Tenor" {
		\set stanza = #"1. "
		%\set fontSize			= #taille
		\override LyricText #'color = #couleur
		\chantTENORun
	}
\new Lyrics \lyricsto "Tenor" {
		\set stanza = #"2. "
		%\set fontSize			= #taille
		\override LyricText #'color	= #couleur
		\override LyricText #'font-shape 	= #'italic
		\chantTENORdeux
	}
