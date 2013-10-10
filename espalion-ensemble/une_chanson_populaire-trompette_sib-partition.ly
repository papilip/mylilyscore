\version "2.17.26"
\language 		"italiano"

\include 		"header-local.ily"
#(define setTITLE	"(Comme) une chanson populaire")
#(define setMETER	"Pour trompettes en SIb")
#(define setTAGLINEnbl	2)

#(set-global-staff-size 30)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
	\include	"../all/header-all.ily"
	% \markup { \vspace #3 }
	\score {
		\new Staff
		{
			\new Voice	{ 
				\relative do'' {
					\include "une_chanson_populaire-trompette_sib-musique.ily"
				}
			}
		}
	}
}
