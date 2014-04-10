\version	"2.19.3"

\relative c'' {
         \override Score.BarNumber.break-visibility   = ##(#f #f #f)
         <>^\markup { \with-color #blue \box H Coda }
         << { b1~ }        \\ { g~ \> }                        >>                                  | %064
%          \override Score.BarNumber.break-visibility   = ##(#f #t #t)
         \time 3/4
         << { b2 }         \\ { g2 }         {s4 s \! }        >>       r4                \bar "||"| %065
%          \override Score.BarNumber.break-visibility   = ##(#f #f #f)
         <>^\markup { \with-color #blue \box I }
%          \time 4/4
         s1                                                                                \bar "|."  %066
}
