\version "2.16.2"
{
  c' e' g' e'
}
% set the starting point to middle C
\relative c' {
  c d e f
  g a b c
}
\relative c' {
  d f a g
  c b f d
}
% one octave above middle C
\relative c'' {
  e c a c
}
\relative c'' {
  b c  % c is 1 staff space up, so is the c above
  b d  % d is 2 up or 5 down, so is the d above
  b e  % e is 3 up or 4 down, so is the e above
  b a  % a is 6 up or 1 down, so is the a below
  b g  % g is 5 up or 2 down, so is the g below
  b f  % f is 4 up or 3 down, so is the f below
}
\relative c'' {
  a a, c' f,
  g g'' a,, f'
}
\relative c'' {
  a1
  a2 a4 a8 a
  a16 a a a a32 a a a a64 a a a a a a a a2
}
\relative c'' {
  a a a4. a8
  a8. a16 a a8. a8 a4.
}
\relative c'' {
  a r r2
  r8 a r4 r4. r8
}
\relative c'' {
  \time 3/4
  a4 a a
  \time 6/8
  a4. a
  \time 4/4
  a4 a a a
}
\relative c'' {
  \time 3/4
  \tempo "Andante"
  a4 a a
  \time 6/8
  \tempo 4. = 96
  a4. a
  \time 4/4
  \tempo  "Presto" 4 = 120
  a4 a a a
}
\relative c' {
  \clef "treble"
  c1
  \clef "alto"
  c1
  \clef "tenor"
  c1
  \clef "bass"
  c1
}
\relative c, {
  \clef "bass"
  \time 3/4
  c2 e8 c'
  g'2.
  f4 e d
  c4 c, r
}
fpuisp = _\markup{
 \dynamic f \italic \small { 2nd } \hspace #0.1 \dynamic p }
violon = \relative c'' {
g4\fpuisp c'8. e16
}
\score {
 \new GrandStaff {
   \new Staff {
     \violon
   }
}

