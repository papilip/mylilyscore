\version "2.21.0"

\relative c' {
c4 c c c c c c c c c c c
}

\relative c' {
\override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/1)
c4 c c c c c c c c c c c
}

% augmenter le dénominateur pour étirer
\relative c' {
\override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/100)
c4 c c c c c c c c c c c
}
