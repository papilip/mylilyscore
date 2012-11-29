%%%%%%%%%%%%% TENOR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\new Staff = "Tenor"
	\with {
		fontSize			= #taille
		instrumentName		= "Ténor"
		shortInstrumentName	= "T. "
	}
	<<
		\clef bass
		%\clef "G_8"
		\new Voice = "Tenor" {
			\dynamicUp
			\global
			\musicTENOR
		}
	>>
\new Lyrics \lyricsto "Tenor" {
		\set stanza = #"1. "
		\set fontSize			= #taille
		\chantTENORun
	}
\new Lyrics \lyricsto "Tenor" {
		\set stanza = #"2. "
		\set fontSize			= #taille
		\override LyricText #'font-shape 	= #'italic
		\chantTENORdeux
	}
