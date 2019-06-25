\version  "2.19.83"
\language "italiano"

\score {
  \new Voice {
    \clef "treble"
    \relative do' { do1 re mi fa sol la si do }
  }
  \addlyrics {
    \lyricmode {
      Mon text \markup { \concat { normal \bold ET \italic italic } }
    }
  }
}
