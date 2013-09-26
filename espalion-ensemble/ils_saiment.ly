\version "2.17.26"
%les information liées à l'entête et au papier
#(define	minSYSTEMSperPAGE	1)
% permet de remettre la taille à 1 pour le debug de l'écriture, à mettre en commentaire pour la partition finale
#(define taille	1)
% la taille des portées
% #(define staffsize 20)
staffSIZE	= 20

\include "../all/solfege.ly"

\header{
	% Les champs suivants sont centrés
	%dedication	= "dedication"
	title		= "Ils s’aiment"
	%subtitle	= ""
	%subsubtitle	= "subsubtitle"
	% instrument	= "Partie pour trompette en sib"

	% Les champs suivants sont alignés sur le bord gauche
	poet		= "Pour trompette en SIb"
	%meter		= "meter"

	% Les champs suivants sont alignés sur le bord droit
	%composer	= ""
	%arranger	= "arranger"

	revision	= "0.1"
	\include "../all/tagline.ly"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
setKEY		= sol
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

musicF	= \relative do'' {
	\include "../all/score_barnumber.ly"
	\set Score.currentBarNumber = 57
	\key	\setKEY	\setMM
	\time	\setTIME
	\bar 	""
	si1~
	|si4\breathe	la	do(	si
	|la1)
	|r4	sol(	si	la)
	|sol1~
	|sol4	fad(	la	sol)
	|fad1~
	|fad1
	\bar	\setBAR
}
titrePORTEE	= \markup { \box F }
musicALL 	= \musicF
\score {	\include "../all/score_music.ly" }

titrePORTEE	= \markup 	{ \box G }
barNUMBER	= 64
laMUSIQUE	= { R1*8 }
musicALL 	= \relative do	{ \include "../all/oneligne_music.ly" }
\score {			  \include "../all/oneligne_score.ly" }

musicH	= \relative do'' {
	\include "../all/score_barnumber.ly"
	\set Score.currentBarNumber = 72
	\key	\setKEY	\setMM
	\time	\setTIME
	\bar 	""
	si1~
	|si4\breathe	la	do(	si
	|la1)
	|r4	sol(	si	la)
	|sol1~
	|sol4	fad(	la	sol)
	|fad1~
	|fad1
	\bar "||"
}
titrePORTEE	= \markup { \box H }
musicALL 	= \musicH
\score {	\include "../all/score_music.ly" }

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
