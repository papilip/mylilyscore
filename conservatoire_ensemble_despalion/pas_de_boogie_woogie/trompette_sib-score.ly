\version 		"2.19"
\language 		"italiano"

\include 		"../header-local.ily"
#(define setTITLE	"Pas de Boogie Woogie")
#(define setMETER	"Pour trompettes en SIb")
#(define setTAGLINEnbl	2)

#(set-global-staff-size 27)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
	\include	"../../all/header-all.ily"
	\markup { \vspace #1 }
	\score {
		\new Staff {	\include "trompette_sib-music1.ily" }
	}
}
