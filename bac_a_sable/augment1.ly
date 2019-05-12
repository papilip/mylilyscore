\version "2.19.83"

{ c'1 }

% pour augmenter la largeur d'une mesure :
{
 \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
 c'1
}

% pour augmenter le nombre de sustèmes :
\score {
 { c'1 1 1 1 1 }
 \layout {
   system-count = 5
 }
}
