%%%%%%%%%%%%% TENOR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\new Staff = "Tenor"
	\with {
		fontSize			= #taille
		instrumentName		= "Ténor"
		shortInstrumentName	= "T. "
	}
	<<
		\clef bass
		\new Voice = "Tenor" {
			\musicTENOR
		}
	>>
\new Lyrics
	\lyricsto "Tenor" {
		\set fontSize		= #taille
		\chantTENOR
	}
