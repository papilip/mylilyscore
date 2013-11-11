\version 		"2.17.26"
\language 		"italiano"

\include 		"header-local.ily"
#(define setTITLE	"Semaine 2013 / 39")
#(define setREVISION	"2")
#(define setTAGLINEnbl	1)

#(define setCOLOR	blue)
% #(set-global-staff-size 20)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(define setSUBTITLE	"Lecture clé de SOL")
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
	\include	"../all/header-all.ily"
	\markup { \vspace #2 }
	\score {
		\new Staff 
			\with { instrumentName = \markup { \with-color \setCOLOR \circle " 1.A " } }
		<<
			\new Voice	{ \voiceOne	\relative do'	{ \include "semaine-2013_39-music_1aa.ily" } }
			\new Voice	{ \voiceTwo	\relative do'	{ \include "semaine-2013_39-music_1ab.ily" } }
		>>
	}

	\markup { \vspace #3 }
	\score {
		\new Staff
			\with { instrumentName = \markup { \with-color \setCOLOR \circle " 1.B " } }
			\new Voice	{ 		\relative do''	{ \include "semaine-2013_39-music_1b.ily" } }
	}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(define setSUBTITLE	"Lecture clé de FA")
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
	\include	"../all/header-all.ily"
	\score {
		\new PianoStaff
			\with { instrumentName = \markup { \with-color \setCOLOR \circle " 2.A " } }
		<<
			\new Staff = "haut"	{ 	\relative do'	{ \include "semaine-2013_39-music_2a.ily" } }
			\new Staff = "bas"	{ 	\clef bass s1*31 s4*2 }
		>>
	}
	\score {
		\new PianoStaff
			\with { instrumentName = \markup { \with-color \setCOLOR \circle " 2.B " } }
		<<
			\new Staff = "haut"	{ 	\relative do	{ \include "semaine-2013_39-music_2b.ily" } }
			\new Staff = "bas"	{ 	\clef bass s1*31 s4*3 }
		>>
	}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(define setSUBTITLE	"Lecture rythmique")
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
	\include 	"../all/header-all.ily"
	\markup { \vspace #3 }
	\score {
		\new PianoStaff
			\with { instrumentName = \markup { \with-color \setCOLOR \circle " 3.A " } }
		<<
			\new RhythmicStaff	{ \voiceOne	\relative do'	{ \include "semaine-2013_39-music_3ba.ily" } }
			\new RhythmicStaff	{ \voiceTwo	\relative do'	{ \include "semaine-2013_39-music_3bb.ily" } }
		>>
	}
	\markup { \vspace #3 }
	\score {
		\new PianoStaff
			\with { instrumentName = \markup { \with-color \setCOLOR \circle " 3.B " } }
		<<
			\new Voice	{ \relative do'	{ \include "semaine-2013_39-music_3ba.ily" } }
			\new Voice	{ \relative do'	{ \include "semaine-2013_39-music_3bb.ily" } }
		>>
	}
	\markup { \vspace #3 }
	\score {
		\new RhythmicStaff
			\with { instrumentName = \markup { \with-color \setCOLOR \circle " 3.C " } }
			\relative do''	{ \include "semaine-2013_39-music_3d.ily" }
	}
	\markup { \vspace #3 }
	\score {
		\new Staff
			\with { instrumentName = \markup { \with-color \setCOLOR \circle " 3.D " } }
			\relative do''	{ \include "semaine-2013_39-music_3d.ily" }
	}
	\markup { \vspace #3 }
	\score {
		\new Staff
			\with { instrumentName = \markup { \with-color \setCOLOR \circle " 3.E " } }
			\relative do''	{ \include "semaine-2013_39-music_3e.ily" }
	}
}
