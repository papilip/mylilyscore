\version "2.12.0"
\include "italiano.ly"

\header {
              }

\paper {
             }

global = { \key do \major \time 4/4 }

 soprMusic  = \relative do'' { \stemUp   do4  do  do  re  | mi2  re2 | do4 mi  re re  | do1  }
 altoMusic  = \relative do'  { \stemDown mi4  mi  sol sol | sol2 sol | la4 do  la si  | sol1 } 
 tenorMusic = \relative do'  { \stemUp   sol4 sol do  si  | do2  si  | \stemDown \change Staff = "portéeMainDroite" mi4 sol re sol | mi1  }
 bassMusic  = \relative do   { \stemDown do4  mi  mi  sol | do2  sol | la4 sol fa sol | do,1 }
 % Ci-dessus,  j'ai opéré, à partir de la 3ème mesure, un changement de portée pour la voix de ténor, afin d'en améliorer la lisibilité
 % Ci-dessous, j'ai changé volontairement le début des paroles pour mieux distinguer les 4 voix sur la partition !
 soprParoles =  \lyricmode { Au  clair de la lu -- ne, mon a -- mi Pier -- rot }
 altoParoles =  \lyricmode { Ô   clair de la lu -- ne, mon a -- mi Pier -- rot }
 tenorParoles = \lyricmode { Oh! clair de la lu -- ne, mon a -- mi Pier -- rot }
 bassParoles =  \lyricmode { Ah! clair de la lu -- ne, mon a -- mi Pier -- rot }

\score { % on va disposer, verticalement, d'abord les paroles du soprano, puis la portée supérieure, puis les paroles des voix d'alto puis celles de ténor, puis la portée inférieure et enfin les paroles de la voix de basse !

  \new GrandStaff <<
    \new Staff = "portéeMainDroite" <<
      \clef "treble" \tempo 4=120      
      \new Voice = "sopranos" { \voiceOne << \global \soprMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
                              >>
      \new Lyrics \with { alignAboveContext = #"portéeMainDroite" } \lyricsto "sopranos" \soprParoles  % au-dessus  de la 1ère portée
      \new Lyrics \with { alignBelowContext = #"portéeMainDroite" } \lyricsto "altos"    \altoParoles  % au-dessous de la 1ère portée

    \new Staff = "portéeMainGauche" <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
                              >>
      \new Lyrics \with { alignAboveContext = #"portéeMainGauche" } \lyricsto "tenors"   \tenorParoles % au-dessus  de la 2ème portée
      \new Lyrics \with { alignBelowContext = #"portéeMainGauche" } \lyricsto "basses"   \bassParoles  % au-dessous  de la 2ème portée

  >>

      \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) }  }
      \layout { } % indispensable pour générer en sortie le pdf si l'on a demandé une sortie midi (ligne ci-dessus) ; sinon, on n'aura le midi mais pas le pdf !
       }
