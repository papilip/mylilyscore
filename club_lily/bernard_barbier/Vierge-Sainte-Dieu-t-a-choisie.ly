\version "2.22.1"
\language "italiano"

\header {
  title = "Vierge Sainte, Dieu t&erq;&nnbsp;a choisie"
  composer = "Musique : P. Déchat"
  arranger = "Harmonisation : G. Roussel"
  poet = "Texte : J.-P. Lécot"
  % Supprimer le pied de page par défaut
  tagline = ##f
}


% #(set-global-staff-size 17)

\paper {
  #(set-paper-size "a4")
  left-margin = 1.5\cm
  line-width=18\cm
  #(define fonts 
     (make-pango-font-tree "Adobe Caslon Pro"
       "Nimbus Sans"
       "Luxi Mono"
       (/ staff-height pt 20)))
  #(include-special-characters)
  systems-per-page = 3
  % system-separator-markup =  \slashSeparator
  system-system-spacing.basic-distance = #20
  indent = 0\cm
}



\layout {
  \context { 
    \Score
    \override StanzaNumber #'font-size = #-0.5
    %\override LyricText #'font-size = #-0.5
    \override BassFigure #'font-size = #-1
  }  
  \context {
    \Staff
    % fusionner automatiquement les silences identiques entre les voix
    \consists "Merge_rests_engraver"
  }
  \context { 
    \ChordNames
    \frenchChords
    \override ChordName #'font-size = #-2
    \override ChordName #'font-family = #'times
  }
  \context {
    \Lyrics
    % Forcing hyphens to be shown
    \override LyricHyphen.minimum-distance = #1.0
  }
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key sol \major
  \numericTimeSignature
  \time 6/8
  \partial 4.
}

sopranoOne = \relative do'' {
  \global
  % En avant la musique !
  \mark \markup \normalsize {\override #'(box-padding . 0.5) \box \line {"Verse"}}

  sol4 la8
  si4 si8 do si la 
  sol4. \breathe si4 do8
  re4 re8 do4 si8 la4.  la8 la si  %\break
  sol4 sol8 do si do la4. si8 si do 
  re re re sol,( la) fad sol4 r8 \bar "||" \break
  
  \mark \markup \normalsize {\override #'(box-padding . 0.5) \box \line {"Chorus"}}

  si4. la \breathe do si \breathe re do4 si8 la4. sol \fermata \bar "|."
}

sopranoTwo = \relative do'' {
  \global
  % En avant la musique !
  si4 do8
  re4. mi8 re do re4.
  sol4. fa mi re
  red mi2. re2. 
  si4. do4 la8 si4 r8
  sol'4. fad \breathe mi  mi \breathe sol mi4 mi8 re4. re \fermata
}

alto = \relative do' {
  \global
  % En avant la musique !
  re4. sol4.~ sol4 la8 si4. sol~ sol~8  la sol fad2.
  mi4. la8 sol la fad4. sol fa mi4 re8~ re4 r8 
  
  sol4. la la sol sol sol8[ la] sol fad4. sol4.
  
}

tenor = \relative do' {
  \global
  % En avant la musique !
  sol4. sol2. sol4. mi si do re si do la' re, sol sol do,4 re8 sol4 r8
  re'4. re mi sol re mi4 si8 re4. si4.
}

bass = \relative do {
  \global
  % En avant la musique !
  sol'4. sol,2. sol'4. mi si do re si do la re sol sol,do4 re8 sol,4 r8
  
  sol'4. re la mi' si do4 do8 re4. sol,\fermata
}

verseOne = \lyricmode {
  % \set stanza = "1."
  \set stanza = \markup { \normal-text \italic \smallCaps " (Fr)"\bold"1."}
  % Ajouter ici des paroles.
  Vier -- ge sain -- te Dieu t&erq;&nnbsp;a choi -- sie, 
  de -- puis toute é -- ter -- ni -- té,
  pour nous don -- \set stanza = "1." ner son fils bien ai -- mé,
  plei -- ne de grâ -- ce nous t&erq;&nnbsp;ac -- cla -- mons_:

  
  \set stanza = "R." A -- ve, a -- ve, a -- ve ma -- ri -- a_!
}

verseTwo = \lyricmode {
  \set stanza = \markup {\normal-text \italic \smallCaps " (It)"\bold"2." }
  %\set stanza = "2."
  % Ajouter ici des paroles.
  % Ajouter ici des paroles.
  O ma -- ri -- a scel -- ta tu sei
  da Co -- lui che ti cre -- ò,
  par da -- re~al  \set stanza = "2." mon -- do Cri -- sto Ge -- sù_:
  pie -- na di gra -- zia, can -- tia -- mo~a te.
  
%   Ho -- ly Vir -- gin, by god's de -- cree, 
%   you were called e -- ter -- nal -- ly,
%   that he could give his Son to our race,
%   Ma -- ry we praise you, hail full of grace.
}

verseThree = \lyricmode {
  % \set stanza = "3."
  \set stanza = \markup { \normal-text \italic \smallCaps " (En)"\bold"3."}
  % Ajouter ici des paroles.
  Ho -- ly Vir -- gin, by god&erq;&nnbsp;s de -- cree, 
  you were called e -- ter -- nal -- ly,
  that he could \set stanza = "3." give his Son to our race,
  Ma -- ry we praise you, hail full of grace.
}

verseFour = \lyricmode {
  % \set stanza = "4."
  % Ajouter ici des paroles.
  \set stanza = \markup {\normal-text \italic \smallCaps " (Fr)"\bold"4." }
  Ô  Ma -- rie, re -- fu -- ge très sûr,
  pour les hom -- mes tes en -- fants,
  tu nous com -- \set stanza = "4." prends et veil -- le sur nous_:
  plei -- ne de grâ -- ce nous te lou -- ons_!

}

verseFive = \lyricmode {
  % \set stanza = "5."
  % Ajouter ici des paroles.
  \set stanza = \markup { \normal-text \italic \smallCaps " (It)"\bold"5."}
  Nel do -- na -- re~il fi -- lio Ge -- sù
  Ma -- dre ric -- ca di bon -- tà,
  di -- ven -- ti \set stanza = "5." Ma -- dre, An -- che per noi_;
  tie -- ni -- ci sem -- pre u -- ni -- ti~a te.
}

verseSix = \lyricmode {
  %\set stanza = "6."
  % Ajouter ici des paroles.
  
  \set stanza = \markup { \normal-text \italic \smallCaps " (En)"\bold"6."}

  By your faith and lo -- ving ac -- cord,
  As the hand -- maid of the Lord,
  you un -- der -- \set stanza = "6." took God&erq;&nnbsp;s pla to em -- brace,
  Ma -- ry we thank you_: hail, ful of grace.
}

verseSeven = \lyricmode {
  \set stanza = "7."
  % Ajouter ici des paroles.
  
}

verseEight = \lyricmode {
  \set stanza = "8."
  % Ajouter ici des paroles.
  
}

verseNine = \lyricmode {
  \set stanza = "9."
  % Ajouter ici des paroles.
  
}

verseTen = \lyricmode {
  \set stanza = "10."
  % Ajouter ici des paroles.
  
}

verseEleven = \lyricmode {
  \set stanza = "11."
  % Ajouter ici des paroles.
  
}

verseTwelve = \lyricmode {
  \set stanza = "12."
  % Ajouter ici des paroles.
  
}

verseThirteen = \lyricmode {
  \set stanza = "13."
  % Ajouter ici des paroles.
  
}

verseFourteen = \lyricmode {
  \set stanza = "14."
  % Ajouter ici des paroles.
  
}

verseFifteen = \lyricmode {
  \set stanza = "15."
  % Ajouter ici des paroles.
  
}

pianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \sopranoOne \\
      \sopranoTwo \\
      \alto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \tenor \\
      \bass
    >>
  }
>>

\markup \vspace #2

\score {
  <<
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Chant"
        shortInstrumentName = "C."
      } \new Voice = "soprano1" \sopranoOne
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano1" \verseOne
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano1" \verseTwo
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano1" \verseThree
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano1" \verseFour
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano1" \verseFive
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano1" \verseSix
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano1" \verseSeven
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano1" \verseEight
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano1" \verseNine
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano1" \verseTen
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano1" \verseEleven
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano1" \verseTwelve
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano1" \verseThirteen
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano1" \verseFourteen
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano1" \verseFifteen
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "S." "A." }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano2" { \voiceOne \sopranoTwo }
        \new Voice = "alto" { \voiceTwo \alto }
      >>
      %       \new Lyrics \with {
      %         \override VerticalAxisGroup #'staff-affinity = #CENTER
      %       } \lyricsto "soprano2" \verseOne
      %       \new Lyrics \with {
      %         \override VerticalAxisGroup #'staff-affinity = #CENTER
      %       } \lyricsto "soprano2" \verseTwo
      %       \new Lyrics \with {
      %         \override VerticalAxisGroup #'staff-affinity = #CENTER
      %       } \lyricsto "soprano2" \verseThree
      %       \new Lyrics \with {
      %         \override VerticalAxisGroup #'staff-affinity = #CENTER
      %       } \lyricsto "soprano2" \verseFour
      %       \new Lyrics \with {
      %         \override VerticalAxisGroup #'staff-affinity = #CENTER
      %       } \lyricsto "soprano2" \verseFive
      %       \new Lyrics \with {
      %         \override VerticalAxisGroup #'staff-affinity = #CENTER
      %       } \lyricsto "soprano2" \verseSix
      %       \new Lyrics \with {
      %         \override VerticalAxisGroup #'staff-affinity = #CENTER
      %       } \lyricsto "soprano2" \verseSeven
      %       \new Lyrics \with {
      %         \override VerticalAxisGroup #'staff-affinity = #CENTER
      %       } \lyricsto "soprano2" \verseEight
      %       \new Lyrics \with {
      %         \override VerticalAxisGroup #'staff-affinity = #CENTER
      %       } \lyricsto "soprano2" \verseNine
      %       \new Lyrics \with {
      %         \override VerticalAxisGroup #'staff-affinity = #CENTER
      %       } \lyricsto "soprano2" \verseTen
      %       \new Lyrics \with {
      %         \override VerticalAxisGroup #'staff-affinity = #CENTER
      %       } \lyricsto "soprano2" \verseEleven
      %       \new Lyrics \with {
      %         \override VerticalAxisGroup #'staff-affinity = #CENTER
      %       } \lyricsto "soprano2" \verseTwelve
      %       \new Lyrics \with {
      %         \override VerticalAxisGroup #'staff-affinity = #CENTER
      %       } \lyricsto "soprano2" \verseThirteen
      %       \new Lyrics \with {
      %         \override VerticalAxisGroup #'staff-affinity = #CENTER
      %       } \lyricsto "soprano2" \verseFourteen
      %       \new Lyrics \with {
      %         \override VerticalAxisGroup #'staff-affinity = #CENTER
      %       } \lyricsto "soprano2" \verseFifteen
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "T." "B." }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
    >>
    % \pianoReduction
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
