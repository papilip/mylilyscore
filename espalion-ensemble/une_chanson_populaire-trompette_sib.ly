\version "2.17.26"

setTITLE	= "(Comme) une chanson populaire"
setPOET		= "Pour trompettes en SIb"
setREVISION	= "0.1"

\include "header.ily"
#(set-global-staff-size 30)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% LA MUSIQUE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicB	= {
	sib16--^\markup	{ \with-color #blue \box B }
		sib	sib	sib~->	sib4	sib16--	sib	sib	sib~->	sib4
	|sol4--	sol8	la16	sib~->	sib2
	|la16--	la	la	la~->	la4	la16--	la	la	la~->	la4
	|la2	sib
	|la2~	la8	r	r4	
}
musicC	= {
	la8^\markup	{ \with-color #blue \box C }
		fad	si	fad16	la~->	la2
	|la8	fad	si	fad16	la~->	la2
	|R1
	|R1
	|sol16(	fad)	sol8	fad	fad16	mi~->	mi2
	|sol16(	fad)	sol8	fad	fad16	mi~->	mi2
	|R1
	|R1
}
musicD	= { 
	R1*4^\markup	{ \with-color #blue \box D }
	|la8	fad	si	fad16	la~->	la2
	|la8	fad	si	fad16	la~->	la2
	|R1
	|R1
	|R1
}
musicALL= \relative do''	{ 
	\include "../all/score_barnumber.ly"
	\tempo 4 = 86
	\time	4/4

	\key	fa	\major
	R1^\markup	{ \box Intro } R1	\bar "||"
	R1*8^\markup	{ \box A }		\bar "||"
	\break
	\musicB				\bar "||"
	\break
	\key	re	\major
	\musicC				\bar "||"
	\break
	\musicD				\bar "|."
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\markup { \vspace #1 }
\new Staff
	\musicALL
