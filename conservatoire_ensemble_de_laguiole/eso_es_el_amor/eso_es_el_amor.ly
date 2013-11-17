\version "2.17.9"
\include "index.ly"

\score {	\include "../all/score_music_a.ly"
	\layout { \context { \Score proportionalNotationDuration = #(ly:make-moment 1/20) } }
}
\score {	\include "../all/score_music_b.ly" }
\score {	\include "../all/score_music_c.ly" }
\score {	\include "../all/score_music_d.ly" }
%\score {	\include "../all/score_music_e.ly" }
%\score {	\include "../all/score_music_f.ly" }
