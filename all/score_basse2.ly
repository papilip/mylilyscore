%%%%%%%%%%%%% BASSE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\new Staff = "Basse"
	\with {
		fontSize			= #taille
		instrumentName		= "Basse"
		shortInstrumentName	= "B. "
	}
	<<
		\clef bass
		\new Voice = "Basse" {
			\dynamicUp
			\global
			\musicBASSE
		}
	>>
\new Lyrics \lyricsto "Basse" {
		\set stanza = #"1. "
		\set fontSize			= #taille
		\chantBASSEun
	}
\new Lyrics \lyricsto "Basse" {
		\set stanza = #"2. "
		\set fontSize			= #taille
		\override LyricText #'font-shape 	= #'italic
		\chantBASSEdeux
	}
