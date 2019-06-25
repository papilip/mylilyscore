\version  "2.19.83"

\markup {
  \draw-circle #2 #0.5 ##f
  \hspace #2
  \draw-circle #2 #0 ##t
}

\markup {
  \column {
    \draw-circle #2 #0.5 ##f
    \draw-circle #2 #0 ##t
    \draw-circle #2 #0.5 ##f
    \draw-circle #2 #0 ##t
  }
}

\markup {
  \column {
    \draw-circle #1 #0.7 ##f
    \draw-circle #2 #0.5 ##f
    \draw-circle #3 #0.3 ##f
  }
}

\markup {
  \column {
    \draw-circle #1.5 #0.3 ##f
    \draw-circle #1.5 #0.3 ##f
    \draw-circle #1.5 #0.3 ##f
  }
}

\markup {
  \column {
    \draw-circle #1 #0.3 ##t
    \draw-circle #1 #0.3 ##t
    \draw-circle #1 #0.3 ##t
  }
}

\markup {
  \override #'(baseline-skip . 2)
  \column {
    \draw-circle #1 #0 ##t
    \draw-circle #1 #0 ##t
    \draw-circle #1 #0 ##t
  }
}
