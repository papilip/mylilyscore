\version "2.17.26"

setTITLE	= "Ils s’aiment"
setPOET		= "Pour trompettes en SIb"
setREVISION	= "0.3"
setTAGLINEnbl	= 2

\include "header.ily"
#(set-global-staff-size 30)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% LA MUSIQUE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicFH = { 
	% si1~
	|si4\breathe	la	do(	si
	|la1)
	|r4	sol(	si	la)
	|sol1~
	|sol4	fad(	la	sol)
	|fad1~
	|fad1
}
musicALL= \relative do'' { 
	\include "../all/score_barnumber.ly"
	\key	sol \major
	\time	4/4

	R1*8^\markup	{ \box Intro }	\bar "||"
	R1*8^\markup	{ \box A }	\bar "||"
	R1*8^\markup	{ \box B }	\bar "||"
	R1*12^\markup	{ \box C }	\bar "||"
	R1*10^\markup	{ \box D }	\bar "||"
	R1*10^\markup	{ \box E }	\bar "||"
	\break
	si1~^\markup	{ \with-color #blue \box F }
	\musicFH			\bar "||"
	R1*8^\markup	{ \box G }	\bar "||"
	si1~^\markup	{ \with-color #blue \box H }
	\musicFH			\bar "||"
	R1*8^\markup	{ \box I }	\bar "||"
	\break
	R1*8^\markup	{ \box Final }	\bar "|."
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\markup { \vspace #3 }
\new Staff
	\musicALL
