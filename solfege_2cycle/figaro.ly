\version 		"2.17.28"
\language 		"italiano"

\include 		"header-local.ily"
#(define setTITLE	"Les Noces de Figaro")
#(define setSUBTITLE	"Air de Figaro")
#(define setCOMPOSER	"W.A. Mozart")
#(define setARRANGER	"1756 – 1791")
#(define setREVISION	"0")
#(define setTAGLINEnbl	1)

#(define setCOLOR	blue)
% #(set-global-staff-size 20)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LA MUSIQUE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


music	= \relative do'	{
	\include "../all/score_barnumber.ly"
	mi4	sol8.	sol16	mi4	sol8.	sol16
	|fa4	re	r	fa8.	fa16
	|re4	fa8.	fa16	re4	fa8.	fa16
	|mi4	do	r	do8.	mi16
	|sol4	mi8.	sol16	do4	sol8.	do16
	|mi4	do2	sol8.	do16
	|sol4	mi8.	sol16	fa4	re8.	sol16
	|mi2	r4	do8.	mi16
	|sol4	mi8.	sol16	do4	sol8.	do16
	|mi4	do2	sol8.	do16
	|sol4	mi8.	sol16	fa4	re8.	sol16
	|do4	r	r	r
	|r4	do8[	sol]	do	sol	do	sol
	|do4	r	r	r
	|r4	do8[	sol]	do	sol	do	sol
	|do4	r	r	do8	do
	|do4	la	r	do8	do
	|do4	sol	r	do8	do
	|do4	la	r	re8	re
	|si4	sol	r	sol8	si
	|la4	la	r	la8	la
	|fad4	fad	r	fad8	fad
	|si4	si	r	si8	si
	|sol4	mi	si'	si8	si
	|sol4	mi	si'	si8	si
	|sol4	mi2	mi8	fad
	|sol4.	sol8	sol4.	sol8
	|si4	si	r	si8	si
	|si4.	si8	si4.	si8
	|do4	do	r	r
	|
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
