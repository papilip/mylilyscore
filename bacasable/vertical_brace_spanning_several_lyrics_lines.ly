
% Replace brace150 by whatever between brace0 and brace575 that is of a
% suitable size.
leftbrace = \markup {\override #'(font-encoding . fetaBraces) \lookup #"brace200" }

% In some versions earlier than 20.10.20, the argument to \rotate was
% erroneously treated as radians instead of degrees, i.e. #3.14 was
% needed instead of #180
rightbrace = \markup {\rotate #180 \leftbrace }


lyricsbeforebrace = \lyricmode {Here is some ly -- rics }

lyricsfrombrace = \lyricmode { \markup{\rightbrace Here} comes some more }


melody = \relative c'{ c d e f g f e d c e d f g }


\score{
<<
 \new Voice = m \melody
 \new Lyrics \lyricsto m \lyricsbeforebrace
 \new Lyrics \lyricsto m { \lyricsbeforebrace \lyricsfrombrace }
 \new Lyrics \lyricsto m \lyricsbeforebrace
>>
}



