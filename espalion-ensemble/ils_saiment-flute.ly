\version "2.17.26"

setPOET		= "Pour flûtes"
setREVISION	= "0.2"

\include "ils_saiment-index.ily"


musicFH 	= \relative do'''	{ 
	% la1~\mf^\boxFH
	|la4\breathe	sol(	sib	la
	|sol1)
	|r4	fa	la(	sol)
	|fa1~
	|fa4	mi(	sol	fa)	
	|mi1~
	|mi1
}

musicALL 	= \relative do'''	{ 
	\include "../all/score_barnumber.ly"
	\key	fa \major
	\time	4/4

	R1*8^\markup	{ \box Intro }	\bar "||"
	R1*8^\markup	{ \box A }	\bar "||"
	R1*8^\markup	{ \box B }	\bar "||"
	R1*12^\markup	{ \box C }	\bar "||"
	R1*10^\markup	{ \box D }	\bar "||"
	R1*10^\markup	{ \box E }	\bar "||"
	\break
	la1~\mf^\markup	{ \with-color #blue \box F }
	\musicFH			\bar "||"
	R1*8^\markup	{ \box G }	\bar "||"
	la1~\mf^\markup	{ \with-color #blue \box H }
	\musicFH			\bar "||"
	R1*8^\markup	{ \box I }	\bar "||"
	\break
	R1*8^\markup	{ \box Final }	\bar "|."
}

\new Staff
	\musicALL
