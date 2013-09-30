\version "2.16.2"
\header {
 title = "GA"
 instrument = "Bu"
 composer = "Zo "
 arranger = "Meu"
 copyright = "2013"
 % Supprimer le pied de page par défaut
 tagline = ##f
}
global = {
 \key c \major
 \time 4/4
 \tempo 4=100
}
upper = \relative c {
 \global
 \set fingeringOrientations = #'(up)
 \override Fingering #'add-stem-support = ##t
 % En avant la musique !
 r2r4e'8 fis8\2-3
}
lower = \relative c' {
 \global
 \set fingeringOrientations = #'(down)
 % En avant la musique !
 r2 r4 g,8-2 fis-2 
}
\score {
 \new StaffGroup \with {
 \consists "Instrument_name_engraver"
 instrumentName = "Guitare Classique"
 } <<
 \new Staff \with {
 midiInstrument = "acoustic guitar (nylon)"
 } { \clef "treble_8" << \upper \\ \lower
      >> }
 \new TabStaff \with {
 stringTunings = #guitar-tuning
 } <<
 \new TabVoice { \voiceOne \upper }
 \new TabVoice { \voiceTwo \lower }
 >>
 >>
 \layout {}
 \midi { }
}
