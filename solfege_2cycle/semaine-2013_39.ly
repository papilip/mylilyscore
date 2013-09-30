\version "2.17.26"

%les information liées à l'entête et au papier
% #(define  minSYSTEMSperPAGE 1)
\include "../all/solfege.ly"

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

	revision	= "0.0"
	\include "../all/tagline.ly"
}

% permet de remettre la taille à 1 pour le debug de l'écriture, à mettre en commentaire pour la partition finale
%#(define taille 1)
% la taille des portées
#(define staffsize 20)

musicAA	= \relative do'		{ \include "semaine-2013_39-music_aa.ily" }
musicAB	= \relative do'		{ \include "semaine-2013_39-music_ab.ily" }
musicB	= \relative do''	{ \include "semaine-2013_39-music_b.ily" }
% musicC  = \relative do''	{ \include "semaine-2013_39-music_c.ily" }

\score {
	\new Staff <<
  		\new Voice	= "firstAA"	{ \voiceOne \musicAA }
		\new Voice	= "secondAB" 	{ \voiceTwo \musicAB }
	>>
}

\score {
	\new Staff
	\with	{ instrumentName		= \markup { \box B } }
	\musicB
	\layout { #(layout-set-staff-size	staffsize) }
}
% \score {
% 	\new RhythmicStaff
% 	\with	{ instrumentName		= \markup { \box C } }
% 	\musicC
% 	\layout { #(layout-set-staff-size	staffsize) }
% }
