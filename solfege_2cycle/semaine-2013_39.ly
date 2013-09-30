\version "2.17.26"
\language "italiano"

\header{
	% Les champs suivants sont centrés
	%dedication	= "dedication"
	title		= "Semaine 2013 / 39"
	%subtitle	= ""
	%subsubtitle 	= "subsubtitle"
	%instrument	= "Partie pour trompette en ut"

	% Les champs suivants sont alignés sur le bord gauche
	poet		= "Conservatoire de l’Aveyron"
	meter		= "Antenne d’Éspalion"

	% Les champs suivants sont alignés sur le bord droit
	composer	= "Composé par Philippe Vigneulle"
	arranger	= "Second cycle, première année"  

	revision	= "0.1"
	\include "../all/tagline.ly"
}

% la taille des portées
#(define staffsize 20)
% l’interligne
% #(define interligne 1.2)

musicAA	= \relative do'		{ \include "semaine-2013_39-music_aa.ily" }
musicAB	= \relative do'		{ \include "semaine-2013_39-music_ab.ily" }
musicB	= \relative do''	{ \include "semaine-2013_39-music_b.ily" }
% musicC  = \relative do''	{ \include "semaine-2013_39-music_c.ily" }

\markup { \vspace #2 }
\new Staff 
	\with	{ instrumentName	= \markup { \box A } }
<<
	\new Voice	= "firstAA"	{ \voiceOne \musicAA }
	\new Voice	= "secondAB" 	{ \voiceTwo \musicAB }
>>

\markup { \vspace #3 }
\new Staff
	\with	{ instrumentName		= \markup { \box B } }
	\musicB
	\layout { #(layout-set-staff-size	staffsize) }

% \score {
% 	\new RhythmicStaff
% 	\with	{ instrumentName		= \markup { \box C } }
% 	\musicC
% 	\layout { #(layout-set-staff-size	staffsize) }
% }
