\version "2.17.26"

setTITLE	= "(Comme) une chanson populaire"
setPOET		= "Pour flutes"
setREVISION	= "0.1"

\include "header.ily"
#(set-global-staff-size 30)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% LA MUSIQUE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicAA	= {
	r2^\markup	{ \with-color #blue \box A }
		r8.	sol16\f	do	sol	do,8~->
	|do2	r8.	sol'16	do	sol	do,8~->
	|do2	r
	|R1*7
}
musicAB	= {
	R1*4^\markup	{ \with-color #blue \box B }
	sol16	do	re	fa	
		sol	do	re	fa	
		sol8	r	mi,\mf	fa16	sol~
	|
}
musicAC	= {
	sol8^\markup	{ \with-color #blue \box C }
		mi	la	mi16	sol~	sol4	mi8	fa16	sol~
	sol8	mi	la	fa16	sol~	sol2
	do16	do	do8-.	si16	si	si8-.	la16	la	la8-.	sol16	sol	sol8-.
	sol16	sol	fa8-.	la	la16	la~	la4	r
	fa16(	mi	fa8-.)	la	re,16	fa~->	fa2
	fa16(	mi	fa8-.)	la	re,16	fa~->	fa2
	si16	si	si	si	la	la	la	la	sol	sol	sol	sol	fa	fa	fa	fa
	la8	sol	sol	fad16	sol~	sol4	r
}
musicALL = \relative do''' { 
	\include "../all/score_barnumber.ly"
	\tempo 4 = 86
	\time	4/4

	\key	mib	\major
	\musicAA			\bar "||"
	\break
	\musicAB			\bar "||"
	\break
	\key	do	\major
	\musicAC			\bar "||"
	% R1^\markup	{ \box Intro } R1	\bar "||"
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\markup { \vspace #1 }
\new Staff
	\musicALL
