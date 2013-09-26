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
	poet		= \setPOET
	%meter		= "meter"

	% Les champs suivants sont alignés sur le bord droit
	%composer	= ""
	%arranger	= "arranger"

	revision	= \setREVISION
	\include "../all/tagline.ly"
}
