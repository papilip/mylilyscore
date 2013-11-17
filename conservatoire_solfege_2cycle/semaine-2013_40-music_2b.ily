\version "2.17.26"

% l'écriture des numéros de mesures
\include "../all/score_barnumber.ly"
\time 3/4
% \tempo "Très lent" 4=52 
% \key fa \major



fa4	sol8	fa	\tuplet 3/2 4	{mi	fa	mi}
|re8	mi	re4	do
|\tuplet 3/2 4	{re8	do	mi	sol	fa	sol}	re4
|fa8	mi	sol[	re]	do4
|re8	mi	\tuplet 3/2 4	{do	mi	fa}	do	re
|sol4	mi	\tuplet 3/2 4	{do8	re	mi
|sol8	re	do}	re4	do8	sol'
|fa8	do	re4	do8	sol'
|\tuplet 3/2 4	{fa8	do	sol'}	mi8	sol	do,4
|sol'4	\tuplet 3/2 4	{do,8	re	fa	mi	do	fa}
|sol4	fa8[	mi]	re	do
|do4	re8	sol	\tuplet 3/2 4	{do,	fa	re}
|sol8	fa	do4	re
|\tuplet 3/2 4	{fa8	sol	do,	fa	re	mi}	do4
|sol'8	do,	fa[	sol]	fa4
|mi8	sol	la16	fa	re	mi	re4
|do16	mi	sol	la	sol8[	mi]	re	mi
|do16	fa	sol	fa	la4	re,
|fa8	mi	sol16	fa	la	sol	fa4
|mi16	re	do	mi	re8[	mi]	fa	sol
|la16	fa	re	do	fa4	la
|mi8	sol	re16	do	fa	mi	sol4
|la16	fa	re	do	mi8[	re]	la'	sol
|mi16	do	sol'	la	do,4	sol'
|mi8	fa	re16	mi	do	la'	fa4
|do16	mi	re	fa	sol8[	fa]	la	do,
|fa16	re	sol	mi	la4
\bar "|."
