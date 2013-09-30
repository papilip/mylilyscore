\version "2.17.26"
\language "italiano"






musicALL	= \relative do' {
	do4	re
	do	si
	re	mi	re
	si	la	si
	do	re	mi
	do	la	si	la
	do	re
	si	do
}


\new PianoStaff {
	\autochange {
		\musicALL
	}
}





\new PianoStaff <<
  \new Staff = "up" {
    <e' c'>8
    \change Staff = "down"
    g8 fis g
    \change Staff = "up"
    <g'' c''>8
    \change Staff = "down"
    e8 dis e
    \change Staff = "up"
  }
  \new Staff = "down" {
    \clef bass
    % keep staff alive
    s1
  }
>>