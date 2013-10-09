\version 		"2.17.28"
\language 		"italiano"

\include 		"header-local.ily"
#(define setTITLE	"tiblouz")
#(define setREVISION	"0")
#(define setTAGLINEnbl	1)

#(define setCOLOR	blue)
% #(set-global-staff-size 20)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LA MUSIQUE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
phraseA	= {la1	dod''8	si'	dod''[	sol']	si'	la'}


music	= \relative do	{
	\include "../all/score_barnumber.ly"
	\absolute \phraseA
	\absolute \phraseA
	re'1	fad'8	mi	fad[	do]	mi	re
	\absolute \phraseA
	mi,,1	mi''8	re	mi[	sold,]	re'	si
	\absolute \phraseA
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
	\include	"../all/header-all.ily"
	\markup { \vspace #3 }
	\score {
		\new Staff
			\with { instrumentName = \markup { \with-color \setCOLOR \circle " 1.A " } }
		{
			\new Voice	{ \music }
		}
	}
}
