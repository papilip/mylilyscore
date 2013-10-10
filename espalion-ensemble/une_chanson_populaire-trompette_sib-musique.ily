\version "2.17.28"
% \include "../all/markup.ily"
\include "../all/score_barnumber.ly"
\tempo	4 = 86
\time	4/4


\key fa \major
R1^\markup	{ \with-color #blue \box Intro } R1	\bar "||"
R1*8^\markup	{ \with-color #blue \box A }		\bar "||"	\break
sib16--^\markup	{ \with-color #blue \box B }	sib	sib	sib~->	sib4	sib16--	sib	sib	sib~->	sib4
|sol4--	sol8	la16	sib~->	sib2
|la16--	la	la	la~->	la4	la16--	la	la	la~->	la4
|la2	sib
|la2~	la8	r	r4				\bar "||"	\break	\key re \major
|la8^\markup	{ \with-color #blue \box C }	fad	si	fad16	la~->	la2
|la8	fad	si	fad16	la~->	la2
|R1
|R1
|sol16(	fad)	sol8	fad	fad16	mi~->	mi2
|sol16(	fad)	sol8	fad	fad16	mi~->	mi2
|R1
|R1							\bar "||"	\break
|R1^\markup	{ \with-color #blue \box D }
|R1
|R1
|R1							\bar "||"	\break
|la8^\markup	{ \with-color #blue \box E }	fad	si	fad16	la~->	la2
|la8	fad	si	fad16	la~->	la2
|R1
|R1
|R1
\bar "|."
