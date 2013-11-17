\version		"2.17.26"
\language 		"italiano"

#(define setTITLE	"Les mains ouvertes")
% #(define setMETER	"Pour trompettes en SIb")
#(define setTAGLINEnbl	1)
% \include 		"../../header-all.ily"

% #(set-global-staff-size 30)





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
	% \include	"../../all/header-all.ily"
	% \markup { \vspace #3 }
	\score {
		\new PianoStaff
		<<
			\new Staff	{ 
				\relative do' {
					\include "music_main_droite.ily"
				}
			}
			\new Staff	{ 
				\relative do {
					\include "music_main_gauche.ily"
				}
			}
		>>
	}
}
