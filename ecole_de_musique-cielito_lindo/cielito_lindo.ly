\version "2.17.9"
\include "index.ly"

\score {
	\new Staff = "A"
		\with {
			fontSize			= #taille
			instrumentName		= \markup { \box "A" }
			%shortInstrumentName	= "A"
		}
		\musicA
	\layout {
		\context {
			\Score
			proportionalNotationDuration = #(ly:make-moment 1/20)
		}
	}
}
\score {
	\new Staff = "B"
		\with {
			fontSize			= #taille
			instrumentName		= \markup { \box "B" }
		}
		\musicB
}
\score {
	\new Staff = "C"
		\with {
			fontSize			= #taille
			instrumentName		= \markup { \box "C" }
		}
		\musicC
}
\score {
	\new Staff = "D"
		\with {
			fontSize			= #taille
			instrumentName		= \markup { \box "D" Flûte }
		}
		\musicD
}
\score {
	\new Staff = "E"
		\with {
			fontSize			= #taille
			instrumentName		= \markup { \box "E" Tutti }
		}
		\musicE
}
