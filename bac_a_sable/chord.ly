\version "2.22.2"

music = \relative c { a8 b c4 c8 d e4 | f e r a | }
chord = { s4 a.2:m d:m4 a:m r f }
<<
  \new ChordNames { \chord }
  { \music }
>>
