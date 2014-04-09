%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version "2.19.3"

clarinetteMusic = 
\relative c'' {
 \time 2/4
 a2 \bar "|."
}

corMusic =
\transpose c' f
\relative c'' { 
 \key d \minor
 R |
}

violonMusic =
\relative c' {
 \key g \minor
 << 
   { 
     \voiceOne 
%%%%%%%%% Réglages Violon I :      
     \once\override TextScript.extra-offset = #'(-2 . 1.8) 
     < d g, >2 _\markup\teeny "(V.I)"
   }
   \new Voice { 
     \voiceTwo 
%%%%%%%%% Réglages Violon II :          
     \once\override NoteColumn.force-hshift = #3
     \once\override Accidental.extra-offset = #'(4 . 0) 
     \once\override TextScript.extra-offset = #'(2 . 0) 
     bes!2 _\markup\teeny "(V.II)"
   }

}

triangleMusic =  \drummode {
 s2 |
}

violoncelleMusic =
\relative c' {
 \clef bass 
 \key g \minor
 < g, d' >2 |
}


\score {
 <<
   \new StaffGroup = "StaffGroup_woodwinds" 
   <<
     \new Staff = "Staff_clarinette" {
       \clarinetteMusic
     }
     \new Staff = "Staff_cor" {
       \transposition f
       \transpose f c' \corMusic
     }
     \new Staff = "Staff_violon" {
       \set Staff.instrumentName = #"Viol. I – II"
       \set Staff.shortInstrumentName = #"Violons"
       \violonMusic
     }
     <<
       \new DrumStaff 
       \with {
         \remove "Bar_engraver"
         drumStyleTable = #percussion-style
         \override StaffSymbol.line-count = #1
         \remove "Time_signature_engraver"
         \hide Stem
         \override Stem.Y-extent = ##f
       } 
       {

%%%%%%%%% Ajout du nom de l'instrument :
         \set DrumStaff.instrumentName = #"Triangle"
         \triangleMusic
       }

     \new Staff = "Staff_violoncelle" {
       \violoncelleMusic
     }


}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
