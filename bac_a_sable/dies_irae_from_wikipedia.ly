\header {
	tagline = ##f
}
\version "2.18.2"
\language "nederlands"
\score {


\relative c' {
  \cadenzaOn
  f8 e f d e c d4 d \breathe
  f8 f([ g)] f([ e)] d([ c)] e f e d4 \breathe
  a8 c( d) d d( c) e f e d \bar "|."
}
\addlyrics {
  Di -- es i -- rae di -- es il -- la,
  Sol -- vet __ sae -- clum __ in fa -- vil -- la:
  Tes -- te __ Da -- vid __ cum Si -- byl -- la
}

\layout { }
	\midi {
		\context { \Score tempoWholesPerMinute = #(ly:make-moment 100 4) }
	}

}
\paper {
	indent = 0\mm
}
