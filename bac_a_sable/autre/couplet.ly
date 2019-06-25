\version  "2.19.83"
\language "italiano"

\score {
  \new Voice {
    \clef "treble"
    \relative do'' {
        do4 do do re
      | mi2 re
      | do4 mi re re
      | do1
    }
  }
  \addlyrics {
    \lyricmode {
      \set stanza = "1. "
      Au clair de la lu -- ne, Mon a -- mi Pier -- rot,
    }
  }
  \addlyrics {
    \lyricmode {
      % \override LyricText #'font-name = "Century Schoolbook, italic"
      \override LyricText.font-shape = #'italic
      \set stanza = "2. "
      % Au clair
      Au \markup { {cl}\italic{air} }
      de la lu -- ne, Pier -- rot ré -- pon -- dit_: }
  }
}
