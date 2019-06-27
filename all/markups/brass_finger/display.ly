\version "2.19.83"

\displayScheme
\markup {
  %{ "do" %}
  \concat {
    \raise #1.0
    \draw-circle #1 #0 ##t
    \raise #1.0
    \draw-circle #1 #0 ##t
    \raise #1.0
    \draw-circle #1 #0 ##t
  }
}
