\version  "2.19.83"
\language "français"

placeLyric =
#(define-music-function (parser location y) (number?)
  (let ((posx-posy (cons 0 (+ y))))
    #{
      \override LyricText.extra-offset      = #posx-posy
      \override LyricExtender.extra-offset  = #posx-posy
      \override LyricHyphen.extra-offset    = #posx-posy
      \override StanzaNumber.extra-offset   = #posx-posy
    #}
  )
)

\score {
  \new Staff {
    \new Voice {
      \clef "treble"
      \relative do' { do1 dod re red mi fa fad sol sold la lad si do }
    }
    \addlyrics {
      \placeLyric 0
      \override LyricText.font-size = #-1
      \lyricmode { "" ⓵⓶⓷ ⓵⓷ ⓶⓷ ⓵⓶ ⓵ ⓶ "" ⓶⓷ ⓵⓶ ⓵ ⓶ "" }
    }
    \addlyrics {
      \placeLyric 1
      \override LyricText.font-size = #-3
      \lyricmode { do do♯ re re♯ mi fa fa♯ sol sol♯ la la♯ si do }
    }
  }
}
