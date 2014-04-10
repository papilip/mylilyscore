\version	"2.19.3"

\relative c'' {
         % l'écriture des numéros de mesures
         \include "../../all/score_barnumber.ly"
         \time 4/4
%          \tempo "Très lent" 4=52 
         \key g \major

         \override Score.BarNumber.break-visibility   = ##(#f #f #f)
         R1*4                                                                             \bar "||"| %001
         \override TextScript.X-offset = #-2
         <>^\markup { \with-color #blue \box A }		
         R1*8                                                                             \bar "||"| %005
        \override TextScript.X-offset = #-2
         <>^\markup { \with-color #blue \box B }
         R1*8                                                                                      |
         \time 2/4
         \override Score.BarNumber.break-visibility   = ##(#f #t #t)
         r2                                                                               \bar "||"|
         \time 4/4
}
