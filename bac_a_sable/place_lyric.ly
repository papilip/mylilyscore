PlaceLyric=
#(define-music-function (parser location y) (number?)
  (let ((posx-posy (cons 0 (- y))))
    #{
      \override LyricText.extra-offset = #posx-posy
      \override LyricExtender.extra-offset = #posx-posy
      \override LyricHyphen.extra-offset = #posx-posy
      \override StanzaNumber.extra-offset = #posx-posy
    #}))

% A écrire ainsi
\relative { c' c c d }
\addlyrics {
 bla bla bla …
}
\addlyrics {
 \PlaceLyric 10
 bla bla bla …
}
