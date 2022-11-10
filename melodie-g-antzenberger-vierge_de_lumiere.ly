\version "2.22.1"
\language "italiano"

\header {
  title = "Vierge de Lumière"
  subtitle = "Psaume 150"
  composer = "Mélodie : G. Antzenberger"
  arranger = "Accompagnement : N. Darros"
  poet = "Texte : J.-P. Lécot"
  % Supprimer le pied de page par défaut
  tagline = ##f
}


% #(set-global-staff-size 17)

\paper {
  #(set-paper-size "a4")
  left-margin = 2\cm
  line-width=17\cm
  #(define fonts 
     (make-pango-font-tree "Adobe Caslon Pro"
       "Nimbus Sans"
       "Luxi Mono"
       (/ staff-height pt 20)))
  #(include-special-characters)
  indent = 0
  % system-separator-markup =  \slashSeparator
  % system-system-spacing.basic-distance = #8
}



\layout {
  \context { 
    \Score
    \override StanzaNumber #'font-size = #-0.5
    % \override LyricText #'font-size = #-0.5
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
    \Score
    \remove "Bar_number_engraver"
  }
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}
global = {
  \key sol \major
  \time 2/2
}



scoreASoprano = \relative do'' {
  \global
  % En avant la musique !
  sol2 sol la la si1 la1
  sol2 sol fad fad mi1 re1 \break
  sol2 sol la la si1 la1 \breathe
  do1 si2 si la1 sol1 \bar "|." \break
  

}

scoreAAlto = \relative do' {
  \global
  % En avant la musique !
  re2 mi fad re sol1 fad
  mi2 mi re re re( dod) re1
  re2 mi fad re sol1 fad 
  sol1 sol2 sol sol( fad) sol1
}

scoreATenor = \relative do' {
  \global
  % En avant la musique !
  si2 si re re re1 re2 (do)
  si2 la la si si( la4 sol) fad1
  si2 si re re re1 re
  mi1 re2 re mi2( re4 do) si1 
}

scoreABass = \relative do {
  \global
  % En avant la musique !
  sol'2 mi re fad sol( si,) re( red)
  mi dod re si sol la re1
  sol2 mi re fad sol( si,) re1
  do1 sol'2 si, do( re) 
  \arpeggioBracket
  <sol, re'>1 \arpeggio
}

scoreAVerseOne = \lyricmode {
  \set stanza = \markup { \normal-text \italic \smallCaps " (Fr)"\bold"R."}
  % Ajouter ici des paroles.
  Vier -- ge de lu -- miè -- re,
  tu es le sou -- ri -- re
  \set stanza = \markup { \normal-text \italic \smallCaps " (Fr)"}
  d'un dieu qui nous ai -- me,
  ô No -- tre Da -- me_!
}

scoreAVerseTwo = \lyricmode {
  \set stanza = \markup {\normal-text \italic \smallCaps " (It)"\bold"R." }
  % Ajouter ici des paroles.
  Lu -- ce che ri -- splen -- de,
  sei tu il sor -- ri -- so,
  \set stanza = \markup {\normal-text \italic \smallCaps " (It)"}
  del di -- vi -- no~a -- mo -- re, o nos -- tra Ma -- dre_!
}

scoreAVerseThree = \lyricmode {
  \set stanza = \markup {\normal-text \italic \smallCaps " (En)"\bold"R." }
  % Ajouter ici des paroles.
  Queen of heav'n -- ly bright -- ness,
  cast a smile up on us,
  \set stanza = \markup {\normal-text \italic \smallCaps " (En)"}
  show -- ing that God loves us,
  o Vir -- gin Mo -- ther_!
}

% \score {
%   \new ChoirStaff <<
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = \markup \center-column { "S." "A." } % { "Soprano" "Alto" }
%       shortInstrumentName = \markup \center-column { "S." "A." }
%     } <<
%       \new Voice = "soprano" { \voiceOne \scoreASoprano }
%       \new Voice = "alto" { \voiceTwo \scoreAAlto }
%     >>
%     \new Lyrics \with {
%       \override VerticalAxisGroup #'staff-affinity = #CENTER
%     } \lyricsto "soprano" \scoreAVerseOne
%     \new Lyrics \with {
%       \override VerticalAxisGroup #'staff-affinity = #CENTER
%     } \lyricsto "soprano" \scoreAVerseTwo
%     \new Lyrics \with {
%       \override VerticalAxisGroup #'staff-affinity = #CENTER
%     } \lyricsto "soprano" \scoreAVerseThree
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = \markup \center-column { "T." "B." } %  { "Ténor" "Basse" }
%       shortInstrumentName = \markup \center-column { "T." "B." }
%     } <<
%       \clef bass
%       \new Voice = "tenor" { \voiceOne \scoreATenor }
%       \new Voice = "bass" { \voiceTwo \scoreABass }
%     >>
%   >>
%   \layout { }
%   \midi {
%     \tempo 4=100
%   }
% }



scoreBSoprano = \relative do'' {
  \global
  % En avant la musique !
  si2 si sol sol la1 re, 
  sol2 la4 si do2 si si1 la1\breathe \break
  re2 re si si do1 la
  si2 la4 sol fad2 re' re dod re1\fermata \bar "||"
}

scoreBAlto = \relative do' {
  \global
  % En avant la musique !
  re2 red mi mi mi( dod) re1
  re2 mi4 mi re2 re  re( dod) re1
  re2 re re re do?( re4 mi) fad1
  re2 dod re re mi2.sol4 fad1
}

scoreBTenor = \relative do' {
  \global
  % En avant la musique !
  si2 la si sib la sol fad1
  si?2 do4 si la2 si sol1 fad \breathe
  fad2 si la sold la1 la
  sol2 sol4 la si2 la si la la1
}

scoreBBass = \relative do {
  \global
  % En avant la musique !
  sol'2 fad mi re dod la re1
  sol2 sol4 sol fad2 sol mi la, re1
  si2 sol' fa mi la,2( si4 do) re1
  sol2 mi si fad' sol la re,1\fermata
}

scoreBVerseOne = \lyricmode {
  \set stanza = \markup { \normal-text \italic \smallCaps " (Fr)"\bold"1."}
  % Ajouter ici des paroles.
  Vier -- ge de lu -- miè -- re,
  tou -- te rem -- plie de grâ -- ce,
  \set stanza = \markup { \normal-text \italic \smallCaps " (Fr)"\bold"1."}
  Dieu vers toi se pen -- che_:
  il t'a choi -- sie a -- vec a -- mour.
}

scoreBVerseTwo = \lyricmode {
  %\set stanza = "2."
  \set stanza = \markup { \normal-text \italic \smallCaps " (It)"\bold"2."}
  % Ajouter ici des paroles.
  Lu -- ce che ris -- plen -- de,
  Re -- gi -- na del -- la Chie -- sa,
  \set stanza = \markup { \normal-text \italic \smallCaps " (It)"\bold"2."}
  fon -- te da -- qui vi -- va,
  tu ci ri -- col -- mi di bon -- tà.
}

scoreBVerseThree = \lyricmode {
  \set stanza = \markup { \normal-text \italic \smallCaps " (En)"\bold"3."}
  % Ajouter ici des paroles.
  Queen of heav'n -- ly bright -- ness, 
  Mo -- ther of grace and beau -- ty,
  \set stanza = \markup { \normal-text \italic \smallCaps " (En)"\bold"3."}
  God him -- self has called you,
  cho -- sen with love from all man -- kind.
}

scoreBVerseFour = \lyricmode {
  \set stanza = \markup { \normal-text \italic \smallCaps " (Fr)"\bold"4."}
  % Ajouter ici des paroles.
  Vier -- ge de lu -- miè -- re,
  Mè -- re de tous les peu -- ples,
  \set stanza = \markup { \normal-text \italic \smallCaps " (Fr)"\bold"4."}
  Mè -- re de l'É -- gli -- se,
  Tem -- ple de dieu ré -- jou -- is toi_!
}

scoreBVerseFive = \lyricmode {
  % \set stanza = "5."
  % Ajouter ici des paroles.
  \set stanza = \markup { \normal-text \italic \smallCaps " (It)"\bold"5."}
  % Ajouter ici des paroles.
  Lu -- ce che ris -- plen -- de,
  tu cam -- bia~i nos -- tri cuo -- ri,
  \set stanza = \markup { \normal-text \italic \smallCaps " (It)"\bold"5."}
  fon -- te del -- la gra -- zia,
  for -- za~e ri -- fu -- gio sei per noi.
}

scoreBVerseSix = \lyricmode {
  \set stanza = \markup { \normal-text \italic \smallCaps " (En)"\bold"6."}
  % Ajouter ici des paroles.
  Queen of heav'n -- ly bright -- ness, 
  Ma -- ry con -- cieved with -- out sin,
  \set stanza = \markup { \normal-text \italic \smallCaps " (En)"\bold"6."}
  Vir -- gin with -- out e -- qual,
  hail, full of grace, we praise your name_!
}


\bookpart {
  \markup \rounded-box Chorus
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "S." "A." } % { "Soprano" "Alto" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" { \voiceOne \scoreASoprano }
        \new Voice = "alto" { \voiceTwo \scoreAAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreAVerseOne
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreAVerseTwo
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreAVerseThree
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "T." "B." } %  { "Ténor" "Basse" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \scoreATenor }
        \new Voice = "bass" { \voiceTwo \scoreABass }
      >>
    >>
    \layout { }
    \midi {
      \tempo 4=100
    }
  }

  \markup \rounded-box Verses

  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "S." "A." } % { "Soprano" "Alto" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" { \voiceOne \scoreBSoprano }
        \new Voice = "alto" { \voiceTwo \scoreBAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreBVerseOne
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreBVerseTwo
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreBVerseThree
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreBVerseFour
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreBVerseFive
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreBVerseSix
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "T." "B." } % { "Ténor" "Basse" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \scoreBTenor }
        \new Voice = "bass" { \voiceTwo \scoreBBass }
      >>
    >>
    \layout { }
    \midi {
      \tempo 4=100
    }
  }
}