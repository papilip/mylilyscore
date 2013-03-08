\version "2.14.2"
  \paper {
    print-all-headers = ##t
  } 
  \header {
  title = "Exercices ..."
  tagline = ""
}



global = {
  \key a \minor
  \numericTimeSignature
  \time 6/8
  \partial 4.
}

right = \relative c'' {
  \global
  % En avant la musique !
  a4 a8
  e'4 e8 d4 e8
  c4. c4 b8
  a8 b c b4 a8
  gis4 e8 a4 a8
  e'4 e8 d4 e8 
  c4. d
  e b8 c b 
  a4. r4 r8 \bar "||"

}
  \header {
  title = "Compagnons de la marjolaine"
  subtitle = "3 - 15 - A"
}
left = \relative c' {
  \global
  % En avant la musique !
  r4 r8
  r2. r2. r2. r2.  r2. r2. r2. r2.
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
    
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}


\version "2.14.2"



global = {
  \key g \major
  \numericTimeSignature
  \time 2/4
}

right = \relative c'' {
  \global
  % En avant la musique !
  r8 g g a
  b a g a 
  b2
  b8 g b d
  b4. b8
  d b a g 
  a2
  r8 d, d' c
   b g b c
   b \fermata g b c 
    d d e e
    d4 c
    b r8 g
    b2
    a
    g ~ g \bar "||"
  
}
\header {
  title = "Rue Saint-Vincent"
  subtitle = "Récitatif"
  subsubtitle = "369 - 16 - A B C D E F"
  composer = "A. Bruant"
}
left = \relative c' {
  \global
  % En avant la musique !
  r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 
  
  
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
    }
  }
}


\version "2.14.2"



global = {
  \key bes \major
  \numericTimeSignature
  \time 2/4
}

right = \relative c'' {
  \global
  % En avant la musique !
  bes 8 bes c c
  d4 d
  bes 8 bes c c
  d2
  d8 d f d
  d4 c
  d8 bes bes c
  c2
  bes8 bes c c
  d4 d
  bes8 bes c c
  d2
  d8 d f d
  c4 c
  c8 d e c
  f2 \fermata
  r4 f
  f es \bar "||"
  
  \time 4/4
  d4 d d f
  d8.c16 bes8 c d2
  d4 d8 d  f  d bes  c 
  d2 bes8 \noBeam bes a bes
  c4 f f8. bes,16 bes8 c
  d4 f f8. f16 f8 es
  d2 c
  bes~bes8 r r4 \bar "||"
  
}
\header {
  title = "Nini peau d‘chien"
  subtitle = "44 - 17 - B F"
  composer = "A. Bruant"
}
left = \relative c' {
  \global
  % En avant la musique !
  r2 r2 r2 r2 r2 r2 r2 r2  r2 r2 r2 r2 r2 r2 r2 r2 r2 r2
  r1 r1 r1 r1 r1 r1 r1 r1 
  
  
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
