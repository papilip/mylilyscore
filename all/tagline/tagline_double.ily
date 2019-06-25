\version  "2.19.83"
%
% Indication du graveur, de l’outil et de la date de gravure
%
\markup {
  \fill-line {
    \center-column {
      \line {
        \teeny  {
          Partition gravée le
          \bold { \simple #(strftime "%d/%m/%Y" (localtime (current-time))) }
          à
          \bold { \simple #(strftime "%H:%M" (localtime (current-time))) }
        }
      }
      \line {
        \teeny  {
          par
          \bold { Papilip }
          \italic \concat {
            \with-url #"mailto:me@papilip.me" "<me@papilip.me>"
          }
          grâce à
          \bold { \with-url #"http://lilypond.org/" { LilyPond.org } }
        }
      }
    }
  }
}
