\version "2.18.2"
\language "italiano"

\score {
  \new Voice {
    \clef "treble"
    \relative do'' {
      do4^"Première mesure" do do re | \break
      mi2^\markup { \bold   { Seconde mesure en gras } } re | \break
      do4^\markup { \italic { Troisième mesure en italique } } mi re re | \break
      do1^\markup { \tiny   { Dernière mesure en tout petit } }
    }
  }
}
