\version "2.17.96"
\relative do' {
% \include "../all/markup.ily"
\include "../../all/score_barnumber.ly"
% \tempo	4 = 86
\time	4/4



\key sib \major
fa1~\p^\markup	{ \with-color #blue \box Intro }
|fa1\<
|la1~
|la1
|do1~
|do1
|mib1~
|mib1\f	\break
|r1^\markup	{ \with-color #blue \box A }
|r8\mf	sib-.	r	la-.	sib--	sib-.	r4
|r1
|do8--	do-.	r	sib-.	r	la-.	r4
|r1
|r2	sib4--	la--
|sib1
|r1
|r1
|fa8--	sib-.	r	do-.	r	re-.	r4
|r1
|do8--	do-.	r	sib-.	r	do-.	r4
|sib1\mp
|solb2	sib\<
|sib1
|do1\!	\break
\repeat volta 2 { |r1^\markup	{ \with-color #blue \box B	\with-color #blue \box C }
	|r1
	|r1
	|r1
	|r2\mf	sib
	|do2	sib4	la
	|sib2	sol~
	|sol1
	|r1
	|r1
	|r1
	|r1
	|r2	mib
	|solb2	sib
	|sib1
	|do1
}
\bar "|."
}
