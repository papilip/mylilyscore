\version "2.22.2"

refrain_chord = \chordmode { c2 }
refrain_music = \relative c '{ c2 }
refrain_chant = \lyricmode { refrain }

couplets_chord = \chordmode { c2 }
couplets_music = \relative c '{ c2 }
couplets_chant = \lyricmode { couplets }

\bookpart {
  \markup \rounded-box Refrain
  \score {
    \new ChoirStaff <<
      \new ChordNames { \refrain_chord }
      \new Staff = "refrain" { \new Voice = "refrain" { \refrain_music } }
      \new Lyrics \lyricsto "refrain" { \refrain_chant }
    >>
  }
  \markup \rounded-box Couplets
  \score {
    \new ChoirStaff <<
      \new ChordNames { \couplets_chord }
      \new Staff = "refrain" { \new Voice = "couplets" { \couplets_music } }
      \new Lyrics \lyricsto "couplets" { \couplets_chant }
    >>
  }
}
