\version "2.19.3"

\relative c'' {
	\break
% 	\override TextScript.X-offset = #-2
	<>^\markup { \with-color #blue \box \titre }
	R1*7											| %022
	r2	r4	<< { a }	\\ { fis-- }	>>				\bar"||"| %029
}
