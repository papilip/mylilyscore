\version "2.17.26"
\language "italiano"

\header{
	% Les champs suivants sont centrés
	%dedication	= "dedication"
	title		= \setTITLE
	%subtitle	= ""
	%subsubtitle	= "subsubtitle"
	% instrument	= "Partie pour trompette en sib"

	% Les champs suivants sont alignés sur le bord gauche
	poet		= "Conservatoire de l’Aveyron"
	meter		= "Antenne d’Éspalion"

	% Les champs suivants sont alignés sur le bord droit
	composer	= "Composé par P.V."
	arranger	= "Second cycle, première année"  

	revision	= \setREVISION

	#(if 	(< setTAGLINEnbl 2)
		(define setTAGLINE "../all/tagline-simple.ily")
		(define setTAGLINE "../all/tagline-double.ily")
	)
	\include \setTAGLINE
	% \include "../all/tagline-simple.ily"
	% \include "../all/tagline-double.ily")
}
