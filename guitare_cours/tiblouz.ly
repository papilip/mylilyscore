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
phraseA	= {	la,1\5\laissezVibrer	dod'8\2	si	dod'[	sol]	si	la}


music	= \relative do,	{
	% \clef "treble_8"
	% \include "../all/score_barnumber.ly"
	\cadenzaOn	\absolute \phraseA
	\bar "|"	\absolute \phraseA
	\bar "|"	re'1\4	fad'8\1	mi	fad[\2	do]	mi	re\2
	\bar "|"	\absolute \phraseA
	\bar "|"	mi,,1	mi''8	re	mi[	sold,]	re'	si
	\bar "|"	\absolute \phraseA
	\bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
	\include	"../all/header-all.ily"
	\markup { \vspace #3 }
	\score {
		\new StaffGroup 
			\with { instrumentName = \markup { \with-color \setCOLOR \circle " 1.A " } }
		<<
			\new Staff   {	\clef "G_8"	\music }
			\new TabStaff			\music
			\new FretBoards			\music
			% \new Staff \new Voice {	\clef "G_8"	\music }
		>>
	}
}
