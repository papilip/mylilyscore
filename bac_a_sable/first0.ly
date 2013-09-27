padText =
#(define-music-function
     (parser location padding)
     (number?)
   #{
     \once \override TextScript.padding = #padding
   #})

\relative c'' {
  c4^"piu mosso" b a b |
  \padText #3
  c4^"piu mosso" d e f |
  \padText #6
  c4^"piu mosso" fis a g |
}
