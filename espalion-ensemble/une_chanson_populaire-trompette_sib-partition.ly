\version "2.17.26"

setTITLE	= "(Comme) une chanson populaire"
setPOET		= "Pour trompettes en SIb"
setREVISION	= "0.1"
setTAGLINEnbl	= 2

\include "header.ily"
#(set-global-staff-size 30)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\markup { \vspace #1 }
\new Staff
	\relative do'' { \include "une_chanson_populaire-trompette_sib-musique.ily" }
