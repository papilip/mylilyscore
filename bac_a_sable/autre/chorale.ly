\version "2.19.83"
\language "italiano"

bBrest =
#(define-music-function
  (parser location arg1)
  (number?)
  #{
    \tweak #'Y-offset #0 r#arg1
  #}
)

bBrestDeux =
#(define-music-function
  (parser location)
  ()
  #{
    \tweak #'Y-offset #0 sol2
  #}
)
\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "S" { \voiceOne \relative do'' { \bBrest #4 fa mi re \bBrest #2 do2 }}
      \new Voice = "A" { \voiceTwo \relative do'' { s4 re do si }}
    >>
    \new Staff <<
      \clef bass
      \new Voice = "T" { \voiceOne \relative do { \bBrest 4 fa mi re }}
      \new Voice = "B" { \voiceTwo \relative do { s4 re do si }}
    >>
  >>
}
\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "S" { \voiceOne \relative do'' { \tweak #'Y-offset #0 r4 fa mi re }}
      \new Voice = "A" { \voiceTwo \relative do'' { s4 re do si }}
    >>
    \new Staff <<
      \clef bass
      \new Voice = "T" { \voiceOne \relative do { \tweak #'Y-offset #0 r4 fa mi re }}
      \new Voice = "B" { \voiceTwo \relative do { s4 re do si }}
    >>
  >>
}
\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "S" { \voiceOne \relative do'' { r4 fa mi re }}
      \new Voice = "A" { \voiceTwo \relative do'' { s4 re do si }}
    >>
    \new Staff <<
      \clef bass
      \new Voice = "T" { \voiceOne \relative do { r4 fa mi re }}
      \new Voice = "B" { \voiceTwo \relative do { s4 re do si }}
    >>
  >>
}

%{
BBrest = #(
  define-music-function (parser location arg) (number?)
  #{ \tweak #'Y-offset arg #}
)

barNumberVisibility = #(
  define-music-function (parser location arg) (boolean?)
  #{ \override Score.BarNumber.break-visibility = #(vector #f arg arg) #}
) %}
%{
\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "S" { \voiceOne \relative do'' { r4 fa mi re }}
      \new Voice = "A" { \voiceTwo \relative do'' { r4 re do si }}
    >>
    \new Staff <<
      \clef bass
      \new Voice = "T" { \voiceOne \relative do { r4 fa mi re }}
      \new Voice = "B" { \voiceTwo \relative do { r4 re do si }}
    >>
  >>
}

 %}

\layout {
	\context {
		\Staff
		% fusionner automatiquement les silences identiques entre les voix
		\consists "Merge_rests_engraver"
	}
}

\language "français"
\new Staff <<
	\new Voice = "S" { \relative do'' { \oneVoice r4 \voiceOne fa mi re }}
	\new Voice = "A" { \relative do'' { \voiceTwo s4 re do si }}
>>


