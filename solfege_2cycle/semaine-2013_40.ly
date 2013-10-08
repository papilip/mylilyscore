\version 		"2.17.26"
\language 		"italiano"

\include 		"header-local.ily"
#(define setTITLE	"Semaine 2013 / 40")
#(define setREVISION	"1")
#(define setTAGLINEnbl	1)

#(define setCOLOR	blue)
% #(set-global-staff-size 20)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(define setSUBTITLE	"Lecture clé de SOL")
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
	\include	"../all/header-all.ily"
	\markup { \vspace #3 }
	\score {
		\new Staff
			\with { instrumentName = \markup { \with-color \setCOLOR \circle " 1.A " } }
		{
			\new Voice	{ 		\relative do''	{ \include "semaine-2013_40-music_1a.ily" } }
		}
	}
	\markup { \vspace #3 }
	\score {
		\new Staff
			\with { instrumentName = \markup { \with-color \setCOLOR \circle " 1.B " } }
		{
			\new Voice	{ 		\relative do''	{ \include "semaine-2013_40-music_1b.ily" } }
		}
	}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(define setSUBTITLE	"Lecture clé de FA")
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
	\include	"../all/header-all.ily"
	\markup { \vspace #3 }
	\score {
		\new Staff 
			\with { instrumentName = \markup { \with-color \setCOLOR \circle " 2.A " } }
		<<
			\clef bass
			\new Voice	{ \voiceOne	\relative do	{ \include "semaine-2013_40-music_2aa.ily" } }
			\new Voice	{ \voiceTwo	\relative do	{ \include "semaine-2013_40-music_2ab.ily" } }
		>>
	}
	\markup { \vspace #3 }
	\score {
		\new Staff
			\with { instrumentName = \markup { \with-color \setCOLOR \circle " 2.B " } }
		{
			\clef bass
			\new Voice	{ 		\relative do	{ \include "semaine-2013_40-music_2b.ily" } }
		}
	}
}
