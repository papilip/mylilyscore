\version		"2.19"
\language   "italiano"
\relative 	do'' {
	r1^\markup  { \with-color #blue \box A }
|	la4  la8 la  sold  sold  sold16  sold  sold  sold  \bar "||"
| <<la1^\markup	{ \with-color #blue \box B } {s4\> s s\! s}>>
|	la1 \> ^\markup  { \with-color #blue \box C } <> \!  \bar "|."
|	}
