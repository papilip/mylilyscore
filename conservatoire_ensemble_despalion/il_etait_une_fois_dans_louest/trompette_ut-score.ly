\version 		"2.17.29"
\language 		"italiano"

\include 		"../header-local.ily"
#(define setTITLE	"Il était une fois dans l’Ouest")
#(define setMETER	"Pour trompettes en UT")
#(define setTAGLINEnbl	2)

#(set-global-staff-size 27)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
	\include	"../../all/header-all.ily"
	\markup { \vspace #1 }
	\score {
		\new Staff {	\transpose do' sib	\relative do' {
			\include "trompette_sib-music.ily"			
			}
		}
	}
}
