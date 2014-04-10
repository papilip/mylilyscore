\version 		"2.19"

\include 		"../header-local.ily"
#(define setTITLE		"Pas Toi")
#(define setMETER		"Trompettes 1 & 2 en UT")
#(define setTAGLINEnbl	2)

#(set-global-staff-size	35)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% LES NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicAB	= \include "trompette_sib-music_ab.ily"
titre	= "C"
musicC	= \include "trompette_sib-music_cf.ily"
titre	= "D"
musicD	= \include "trompette_sib-music_dg.ily"
musicE	= \include "trompette_sib-music_e.ily"
titre	= "F"
musicF	= \include "trompette_sib-music_cf.ily"
titre	= "G"
musicG	= \include "trompette_sib-music_dg.ily"
musicHI	= \include "trompette_sib-music_hi.ily"


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
	\include	"../../all/header-all.ily"
	\markup { \vspace #1 }
	\score {
		\new Staff { \transpose c' bes
			\musicAB
			\musicC
			\musicD
			\musicE
			\musicF
			\musicG
			\musicHI
		}
	}
}
