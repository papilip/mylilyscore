\version 		"2.17.28"
\language 		"italiano"

\markup { \vspace #1 }
\new Staff
	\transpose do sib { \relative do' { \include "transpose_music_ut.ly" } }

\markup { \vspace #1 }
\new Staff
	\transpose sib do { \relative do'' { \include "transpose_music_ut.ly" } }
