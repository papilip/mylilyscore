\version "2.17.26"
\new Staff <<
  \new Voice = "first"
    { \voiceOne \relative c' {c8*2/3 d e[ f] a b } }
  \new Voice= "second"
    { \voiceTwo \relative c' { \tuplet 3/2 4 { c8 d e f a b } } }
>>



\score { \relative c' {c4 d e f a b } }
\score { \relative c' {c4 d e f a b } }
