\version	"2.19.3"

\relative c'' {
         \override TextScript.X-offset = #-1
         <>^\markup { \with-color #blue \box E }
         << { b1 }         \\ { g \p \< }    >>                                                       | %041
         << { bes1 }       \\ { g \p \< }    >>                                                       | %042
         << { c1 }         \\ { g \< }       >>                                                       | %043
         << { b1 }         \\ { g }          {s4\> s s s\! }   >>                            \bar "||"| %044
}
