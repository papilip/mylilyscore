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
\new Lyrics
	\lyricsto "Tenor" {
		\set fontSize		= #taille
		\chantTENOR
	}
