% testbox.ly
\version "2.17.29"
\score {
	\new Staff {
		\compressFullBarRests
		\override MultiMeasureRest.expand-limit = #3
		R1*13^\markup	{ \with-color #blue \box A }
	}
}
