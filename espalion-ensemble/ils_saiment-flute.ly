\version "2.17.26"

setPOET		= "Pour flûte"
setREVISION	= "0.1"

\include "ils_saiment-index.ily"

setKEY		= fa
setMM		= \major
setBAR		= "||"
setTIME		= 4/4

titrePORTEE	= \markup 	{ \box Intro }
barNUMBER	= 1
laMUSIQUE	= { R1*8 }
musicALL 	= \relative do	{ \include "../all/oneligne_music.ly" }
\score {			  \include "../all/oneligne_score.ly" }

titrePORTEE	= \markup 	{ \box A }
barNUMBER	= 9
laMUSIQUE	= { R1*8 }
musicALL 	= \relative do	{ \include "../all/oneligne_music.ly" }
\score {			  \include "../all/oneligne_score.ly" }

titrePORTEE	= \markup 	{ \box B }
barNUMBER	= 17
laMUSIQUE	= { R1*8 }
musicALL 	= \relative do	{ \include "../all/oneligne_music.ly" }
\score {			  \include "../all/oneligne_score.ly" }

titrePORTEE	= \markup 	{ \box C }
barNUMBER	= 25
laMUSIQUE	= { R1*12 }
musicALL 	= \relative do	{ \include "../all/oneligne_music.ly" }
\score {			  \include "../all/oneligne_score.ly" }

titrePORTEE	= \markup 	{ \box D }
barNUMBER	= 37
laMUSIQUE	= { R1*10 }
musicALL 	= \relative do	{ \include "../all/oneligne_music.ly" }
\score {			  \include "../all/oneligne_score.ly" }

titrePORTEE	= \markup 	{ \box E }
barNUMBER	= 47
laMUSIQUE	= { R1*10 }
musicALL 	= \relative do	{ \include "../all/oneligne_music.ly" }
\score {			  \include "../all/oneligne_score.ly" }

musicF	= \relative do''' {
	\include "../all/score_barnumber.ly"
	\set Score.currentBarNumber = 57
	\key	\setKEY	\setMM
	\time	\setTIME
	\bar 	""
	la1~\mf
	|la4\breathe	sol(	sib	la
	|sol1)
	|r4	fa	la(	sol)
	|fa1~
	|fa4	mi(	sol	fa)	
	|mi1~
	|mi1
	\bar	\setBAR
}
titrePORTEE	= \markup { \box F }
musicALL 	= \musicF
\score {			  \include "../all/score_music.ly" }

titrePORTEE	= \markup 	{ \box G }
barNUMBER	= 64
laMUSIQUE	= { R1*8 }
musicALL 	= \relative do	{ \include "../all/oneligne_music.ly" }
\score {			  \include "../all/oneligne_score.ly" }

titrePORTEE	= \markup { \box H }
musicALL 	= \musicF
\score {			  \include "../all/score_music.ly" }

titrePORTEE	= \markup 	{ \box I }
barNUMBER	= 80
laMUSIQUE	= { R1*6 }
musicALL 	= \relative do	{ \include "../all/oneligne_music.ly" }
\score {			  \include "../all/oneligne_score.ly" }

titrePORTEE	= \markup 	{ \box Final }
barNUMBER	= 86
laMUSIQUE	= { R1*8 }
setBAR		= "|."
musicALL 	= \relative do	{ \include "../all/oneligne_music.ly" }
\score {			  \include "../all/oneligne_score.ly" }
