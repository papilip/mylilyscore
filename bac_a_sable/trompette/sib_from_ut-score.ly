\version 		"2.17.29"
\language 		"italiano"

#(set-global-staff-size 27)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
	\markup { \vspace #1 }
	\score {
		\new Staff {	\transpose do' sib	\relative do' {
			\include "music.ily"			
			}
		}
	}
}
