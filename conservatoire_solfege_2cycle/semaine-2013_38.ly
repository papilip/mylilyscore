\version 		"2.17.26"
\language 		"italiano"

\include 		"header-local.ily"
#(define setTITLE	"Semaine 2013 / 38")
#(define setREVISION	"3")
#(define setTAGLINEnbl	1)

#(define setCOLOR	blue)
% #(set-global-staff-size 20)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(define setSUBTITLE	"Lecture clé de SOL et rythme")
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
	\include	"../all/header-all.ily"
	% \markup { \vspace #2 }
	\score {
		\new Staff 
			\with { instrumentName = \markup { \with-color \setCOLOR \circle " A " } }
		{
			\new Voice	{ \relative do'	{ \include "semaine-2013_38-music_1a.ily" } }
		}
	}
	% \markup { \vspace #3 }
	\score {
		\new Staff
			\with { instrumentName = \markup { \with-color \setCOLOR \circle " B " } }
		{
			\new Voice	{ \relative do''	{ \include "semaine-2013_38-music_1b.ily" } }
		}
	}
	% \markup { \vspace #3 }
	\score {
		\new RhythmicStaff
			\with { instrumentName = \markup { \with-color \setCOLOR \circle " C " } }
		{
			\new Voice	{ \relative do''	{ \include "semaine-2013_38-music_1c.ily" } }
		}
	}
}














% \version "2.17.26"

% %les information liées à l'entête et au papier
% % #(define  minSYSTEMSperPAGE 1)
% \include "../all/solfege.ly"

% \header{
% 	% Les champs suivants sont centrés
% 	%dedication	= "dedication"
% 	title		= "Semaine 2013 / 38"
% 	%subtitle	= ""
% 	%subsubtitle 	= "subsubtitle"
% 	%instrument	= "Partie pour trompette en ut"

% 	% Les champs suivants sont alignés sur le bord gauche
% 	poet		= "Conservatoire de l’Aveyron"
% 	meter		= "Antenne d’Éspalion — 2013"

% 	% Les champs suivants sont alignés sur le bord droit
% 	composer	= "Composé par Philippe Vigneulle"
% 	arranger	= "Second cycle, première année"  

% 	revision	= "0.3"
% 	\include "../all/tagline.ly"
% }

% % permet de remettre la taille à 1 pour le debug de l'écriture, à mettre en commentaire pour la partition finale
% %#(define taille 1)
% % la taille des portées
% #(define staffsize 19)

% musicA  = \relative do'		{ \include "semaine_38-music_a.ily" }
% musicB  = \relative do''	{ \include "semaine_38-music_b.ily" }
% musicC  = \relative do''	{ \include "semaine_38-music_c.ily" }

% \score {
% 	\new Staff
% 	\with	{ instrumentName		= \markup { \box A } }
% 	\musicA
% 	\layout { #(layout-set-staff-size	staffsize) }
% }
% \score {
% 	\new Staff
% 	\with	{ instrumentName		= \markup { \box B } }
% 	\musicB
% 	\layout { #(layout-set-staff-size	staffsize) }
% }
% \score {
% 	\new RhythmicStaff
% 	\with	{ instrumentName		= \markup { \box C } }
% 	\musicC
% 	\layout { #(layout-set-staff-size	staffsize) }
% }
