%%%%%%%%%%%%% SOPRANO %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\new Staff = "Soprano"
	\with {
		fontSize			= #taille
		instrumentName		= "Soprano"
		shortInstrumentName	= "S. "
		%\override InstrumentName	#'color = #couleur
	}
	<<
		\new Voice = "Soprano" {
			\autoBeamOff
			\dynamicUp
			\global
			%\bgcolor "(rgb-color 1 1 0.7)"
			\musicSOPRANO
			\bar "||"
		}
	>>
\new Lyrics
	\lyricsto "Soprano" {
		\set fontSize		= #taille
		\chantSOPRANO
	}
