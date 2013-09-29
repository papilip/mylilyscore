\version "2.17.26"

% l'écriture des numéros de mesures
\include "../all/score_barnumber.ly"
\time 4/4
\tempo \markup { "Giocoso " \italic "<Espiègle>" } 4=78




do8\f	re	mi16	fa8	sol16	la8	si	do4
|r16	re\p\<	mi	fa	r	la	si	do	re8	mi16	fa	sol4
|do8.\f	re16	mi	fa8	sol16	la8.	si16	do4
|do16	re8	mi16(	fa8)	sol	la16	si8	do16->	r4
|do4\f	\times 2/3 {r8	fa	sol}	\times 2/3 {si8	do	re}	\times 2/3 {fa8	sol	la}
|do4\f	\times 2/3 {r8	fa\p	sol}	la16	si8	do16	re	mi	fa	sol
|do8\f	re(	mi16)	fa8	sol16	la8	si	do4
|r16	re\p\<	mi	fa	r	la	si	do	re	mi	fa8	sol16	la	si8
|do4\f	r	mi16	fa8	sol16->	r4
\bar "|."
