%%%% Lily code

\version "2.14.2"

global = {
 \key c \minor
 \numericTimeSignature
 \time 3/4
}

harmonies = \chordmode {
 c2.:m
 g:7
 c:m
 g:7
 c:m
 g:aug
}

\score {
 <<
   \new ChordNames \with {
     % alignAboveContext = "right"  %% XS: pas utile (Staff = "right")
     chordChanges = ##t
     \override ChordName #'font-name = #"opens"
   } {
     \harmonies
   }

 \layout {
   \context {
     \ChordNames
     % \override ChordName #'font-name = #"opens"
   }
 }
 \midi {
   \context {
     \Score
     tempoWholesPerMinute = #(ly:make-moment 160 4)
   }
 }
}

%%%% End of lily code