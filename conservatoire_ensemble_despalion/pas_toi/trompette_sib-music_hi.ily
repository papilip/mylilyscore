\version "2.19.3"

\relative c'' {
	\barNumberVisibility ##f
	<>^\markup { \with-color #blue \box H Coda }
	<< { b1~ }	\\ { g~ \> }			>>					| %064
	\time 3/4
	<< { b2 }	\\ { g2 }	{s4 s \! }	>>	r4			\bar"||"| %065
	<>^\markup { \with-color #blue \box I Tacet}
	s1										\bar"|."  %066
}
