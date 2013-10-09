mpdolce =
#(make-dynamic-script
  #{ \markup { \hspace #0
               \translate #'(5 . 0)
               \line { \dynamic "mp"
                       \text \italic "dolce" } }
  #})

inst =
#(define-music-function
     (parser location string)
     (string?)
   #{ <>^\markup \bold \box #string #})

\layout{
  \context {
    \Score
    \override MetronomeMark.extra-offset = #'(-5 . 0)
    \override MetronomeMark.padding = #'3
  }
  \context {
    \Staff
    \override TimeSignature.style = #'numbered
  }
  \context {
    \Voice
    \override Glissando.thickness = #3
    \override Glissando.gap = #0.1
  }
}