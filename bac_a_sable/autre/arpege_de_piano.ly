\version "2.14.2"

global = {
  \key c \minor
  \numericTimeSignature
  \time 3/4
}

  right = \relative c'' {
  \global
  % En avant la musique !
  \tag #'partition {
	  \set PianoStaff.connectArpeggios = ##t
	  \set Timing.measureLength = #(ly:make-moment 4 4)
	  << { g4 s g8 g g4 } \\  { s2 <b, dis>2  \arpeggio }  >>
	  \set Timing.measureLength = #(ly:make-moment 3 4)
  }
  \tag #'midi {
	 << { g4 g8 g g4 } \\  { s4 <b, dis>2  \arpeggio }  >>
  }
  }
  
  left = \relative c' {
  \global
  \tag #'partition {
	  \set Timing.measureLength = #(ly:make-moment 4 4)
	  g,4 s g'2\arpeggio 
	  \set Timing.measureLength = #(ly:make-moment 3 4)
  }
  \tag #'midi {
	  g,4 g'2\arpeggio 
  }
  }
  
  
\score {
  \keepWithTag #'partition
  \new PianoStaff \with {
    instrumentName = "Piano"
    } <<
    \new Staff = "right" \right
    \new Staff = "left" { \clef bass \left }
    >>
  \layout { }
}

\score {
  \keepWithTag #'midi  
  \unfoldRepeats {
    <<
      \set Score.midiInstrument = #"acoustic grand"
        \new Staff = "right" \right
        \new Staff = "left" { \clef bass \left }
    >>
  } 
  \midi {
    %\set Score.midiMinimumVolume = #1
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 160 4)
     %\remove "Dynamic_performer"
    }
  }
}





%%%%%%%%%%%%%%%%%%%%%%
global = {
 \key c \minor
 \numericTimeSignature
 \time 3/4
}

 right = \relative c'' {
 \global
 % En avant la musique !
 \set PianoStaff.connectArpeggios = ##t
 \override PianoStaff.Arpeggio #'X-extent = #'(-3 . 1)
 << { g4 g8 g g4 } \\  { s4 <b, dis>2  \arpeggio }  >>
 }

 left = \relative c' {
 \global
 g,4 g'2\arpeggio
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
 \layout {
   \context {
   }
 }
 \midi {
   \context {
     \Score
     tempoWholesPerMinute = #(ly:make-moment 160 4)
   }
 }
}

%%%%%%%%%%%%%%%%%%%%
