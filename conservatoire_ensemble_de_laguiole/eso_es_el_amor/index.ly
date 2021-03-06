%les information liées à l'entête et au papier
#(define	minSYSTEMSperPAGE	1)
\include "../all/paper.ly"

\header{
	% Les champs suivants sont centrés
	%dedication	= "dedication"
	title		= "Eso es el Amor"
	%subtitle	= ""
	%subsubtitle	= "subsubtitle"
	%instrument	= "Partie pour trompette en ut"

	% Les champs suivants sont alignés sur le bord gauche
	poet		= "Pour trompette en UT"
	%meter		= "meter"

	% Les champs suivants sont alignés sur le bord droit
	%composer	= ""
	%arranger	= "arranger"

	revision		= "0.0"
	\include "../all/tagline.ly"
}

% permet de remettre la taille à 1 pour le debug de l'écriture, à mettre en commentaire pour la partition finale
#(define taille	1)

musicA	= \relative do''	 { \include "music_a.ly" }
musicB	= \relative do''	 { \include "music_b.ly" }
musicC	= \relative do''	 { \include "music_c.ly" }
musicD	= \relative do''	 { \include "music_d.ly" }
musicE	= \relative do''	 { \include "music_e.ly" }
musicF	= \relative do''	 { \include "music_f.ly" }
