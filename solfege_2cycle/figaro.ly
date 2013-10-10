\version 		"2.17.28"
\language 		"italiano"

\include 		"header-local.ily"
#(define setTITLE	"Les Noces de Figaro")
#(define setSUBTITLE	"Air de Figaro")
#(define setCOMPOSER	"W.A. Mozart")
#(define setARRANGER	"1756 – 1791")
% #(define setREVISION	"0")
#(define setTAGLINEnbl	1)

#(define setCOLOR	blue)
% #(set-global-staff-size 20)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LA MUSIQUE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
music	= \relative do'' {
	\include "../all/score_barnumber.ly"
	\partial 4	sol8.^\markup { Allegro }	sol16
	\repeat volta 2	{mi4	sol8.	sol16	mi4	sol8.	sol16
	|fa4	re	r	fa8.	fa16
	|re4	fa8.	fa16	re4	fa8.	fa16
	|mi4	do	r	do8.	mi16
	|sol4	mi8.\<	sol16	do4	sol8.	do16\!
	|mi4	do2\breathe	sol8.	do16
	|sol4	mi8.	sol16	fa4\>	re8.	sol16
	|mi2\!	r4	do8.	mi16
	|sol4	mi8.\>	sol16	do4	sol8.	do16\!
	|mi4	do2\breathe	sol8.	do16
	|sol4	mi8.\>	sol16	fa4	re8.\!	sol16}
	|do4	r	r	r
	|r4\f	do8	sol	do	sol	do	sol
	|do4	r	r	r
	|r4\f	do8[	sol]	do	sol	do	sol
	|do4	r	r	do8	do
	|do4	la	r	do8	do
	|do4	sol	r	do8	do
	|do4	la	r	re8	re
	|si4	sol	r	sol8	si
	|la4	la	r	la8	la
	|fad4	fad	r	fad8	fad
	|si4	si	r	si8	si
	|sol4	mi\breathe	si'	si8	si
	|sol4	mi	si'	si8	si
	|sol4	mi2\fermata\breathe	mi8	fad
	|sol4.	sol8	sol4.	sol8
	|si4	si	r\mf	si8	si
	|si4.	si8	si4.	si8
	|do4	do	r	r
	|r4	do8	do	do	do	mi	do
	|sol4	r	r	r
	|r4\cresc	sol8	sol	sol	sol	sol	sol
	|do8	do	do	do	do	do	do	do
	|fa,8	fa	fa	fa	fa	fa	fa	fa
	|do'8	do	do	do	do	do	do	do
	|sol8	sol	sol	sol	sol\<	sol	sol	sol
	|do4\f	r	r	do8\p	la
	|sol4	r	r	do8	la
	|sol8	sol	r4	r	do8	la
	|sol4	r	r	do8	la
	|sol8	sol	r4	r	do8	la
	|sol4	r	r	do8\>	la
	|sol8	sol	r4	r4	do8	la
	|sol4\!	r	la	do8	la
	|sol4	sol2\fermata	sol4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
	\include	"../all/header-all.ily"
	\markup { \vspace #3 }
	\score {
		\new Staff
			% \with { instrumentName = \markup { \with-color \setCOLOR \circle " 1.A " } }
		{
			\new Voice	{ \music }
		}
	}
}
