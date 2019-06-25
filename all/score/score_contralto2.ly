%%%%%%%%%%%%% CONTRALTO avec deux couplets %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
\new Lyrics \lyricsto "Contralto" {
		\set stanza = #"1. "
		\set fontSize			= #taille
		\chantCONTRALTOun
	}
\new Lyrics \lyricsto "Contralto" {
		\set stanza = #"2. "
		\set fontSize			= #taille
		\override LyricText #'font-shape 	= #'italic
		\chantCONTRALTOdeux
	}
