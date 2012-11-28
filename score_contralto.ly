%%%%%%%%%%%%% CONTRALTO %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\new Staff = "Contralto"
	\with {
		fontSize			= #taille
		instrumentName		= "Contralto"
		shortInstrumentName	= "C. "
	}
	<<
		\new Voice = "Contralto" {
			\dynamicUp
			\global
			\musicCONTRALTO
		}
	>>
\new Lyrics
	\lyricsto "Contralto" {
		\set fontSize		= #taille
		\chantCONTRALTO
	}
