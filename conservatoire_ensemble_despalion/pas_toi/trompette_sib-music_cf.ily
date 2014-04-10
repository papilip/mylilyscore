\version	"2.19.3"

\relative c'' {
        \override Score.BarNumber.break-visibility   = ##(#f #f #f)
        \override TextScript.X-offset = #-2
         <>^\markup { \with-color #blue \box \titre }
         R1*7                                                                                      | %022
         \override Score.BarNumber.break-visibility   = ##(#f #t #t)
         r2       r4       << { a }        \\ { fis-- }        >>                         \bar "||"| %029
}
