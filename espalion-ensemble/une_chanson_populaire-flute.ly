\version "2.17.26"

setTITLE	= "(Comme) une chanson populaire"
setPOET		= "Pour flutes"
setREVISION	= "0.1"
setTAGLINEnbl	= 1

\include "header.ily"
#(set-global-staff-size 19)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% LA MUSIQUE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicAA	= {
	r2^\markup	{ \with-color #blue \box A }				%01
		r8.	sol16\f	do	sol	do,8~->
	|do2	r8.	sol'16	do	sol	do,8~->				%02
	|do2	r								%03
	|R1*7									%04
}
musicAB	= {
	R1*4^\markup	{ \with-color #blue \box B }				%11
	sol16	do	re\<	fa\!
		sol	do	re	fa
		sol8	r	mi,\mf	fa16	sol~				|%15
}
musicAC	= {
	sol8^\markup	{ \with-color #blue \box C }				
		mi	la	mi16	sol~	sol4	mi8	fa16	sol~	|%16
	sol8	mi	la	mi16	sol~	sol2				|%17
	do16	do	do8-.	si16	si	si8-.
		la16	la	la8-.	sol16	sol	sol8-.			|%18
	\stemUp
	|sol16	sol	fa8-.	la	la16	la~	la4	r		%19
	|fa16	mi	fa8	la	re,16	fa~->	fa2			%20
	|fa16	mi	fa8	la	re,16	fa~->	fa2			%21
	|si16	si	si	si	la	la	la	la		%22
		sol	sol	sol	sol	fa	fa	fa	fa
	|la8	sol	sol	fad16	sol~	sol4	r			%23
}
musicAD	= {
	R1*3^\markup	{ \with-color #blue \box D }				%24
	r2\<	sol\!								%27
}
musicAE	= {
	mi'1~^\markup	{ \with-color #blue \box E }				%28
	|mi1									%29
	|re4	do	si2							%30
	|do1\>									%31
	|r2\!	r8.	sol16	do8	sol16	do,->				%32
}
musicAone= \relative do''' { 
	\include "../all/score_barnumber.ly"
	\override MultiMeasureRest.expand-limit = #2
	\tempo	4=86
	\time	4/4

	\key	mib	\major
	\musicAA			\bar "||"
	\break
	\musicAB			\bar "||"
	\break
	\key	do	\major
	\musicAC			\bar "||"
	\break
	\musicAD			\bar "||"
	\musicAE			\bar "|."
}
musicAtwo= \relative do''' {
	s1*18
	sol16	sol	fa8-.	fa	mi16	fa~	fa4	s		%19
	|fa16--(	mi	fa8-.)	la	re,16	fa~->	fa2		%20
	|fa16--(	mi	fa8-.)	la	re,16	fa~->	fa2		%21
	|sol16	sol	sol	sol	fa	fa	fa	fa		%22
		mi	mi	mi	mi	re	re	re	re
	|fa8	mi	mi	red16	mi~	mi4	s			%23
	s1*4									%24
	do'1~									%28
	|do1									%29
	|fa,4	mi	fa2							%30
	|mi1									%31
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

musicBA	= {
	do2^\markup	{ \with-color #blue \box A }	r			|%01
	R1*3									%02
	do'8--[(\f	sib16	lab])	do8-.	r	r2			|%05
	do8--[(\f	sib16	lab])	do8-.	r	r2			|%06
	do8--[(\f	sib16	lab])	do8-.	r	r2			|%06
	r8	re16--(	dod	re8-.)	r	sol16	re	sol,8-.	r4	|%07
}
musicBD	= {
	R1*3^\markup	{ \with-color #blue \box D }				%22
	r2	r4	mi8	fa16	sol--					%25
}
musicBone= \relative do'' {
	\include "../all/score_barnumber.ly"
	\override MultiMeasureRest.expand-limit = #2
	\tempo	4=86
	\time	4/4

	\key	mib	\major
	\musicBA			\bar "||"
	\break
	\relative do'' { \musicAB }	\bar "||"
	\key	do	\major
	\musicAC			\bar "||"
	\break
	\musicBD			\bar "|."

}
musicBtwo= \relative do''' {
	s1*16
	sol16	sol	fa8-.	fa	mi16	fa~	fa4	s		|%17
	fa16--(	mi	fa8-.)	la	re,16	fa~->	fa2			|%18
	fa16--(	mi	fa8-.)	la	re,16	fa~->	fa2			|%19
	sol16	sol	sol	sol	fa	fa	fa	fa
		mi	mi	mi	mi	re	re	re	re	|%20
	fa8	mi	mi	red16	mi~	mi4	s			|%21
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \markup { \vspace #1 }
\new Staff
<<
	\new Voice	= "musicAone"	{		\musicAone }
	\new Voice	= "musicAtwo" 	{ \voiceTwo	\musicAtwo }
>>
% \markup { \vspace #0.5 }
\new Staff
<<
	\new Voice	= "musicBone"	{		\musicBone }
	\new Voice	= "musicBtwo" 	{ \voiceTwo	\musicBtwo }
>>
