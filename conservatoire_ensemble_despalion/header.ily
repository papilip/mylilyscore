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
	poet		= \setPOET
	% meter		= "2013"

	% Les champs suivants sont alignés sur le bord droit
	composer	= "Ensemble musical d’Éspalion — 2013"
	arranger	= "Arrangements de Frédéric Bonnet"

	revision	= \setREVISION

	#(if 	(< setTAGLINEnbl 2)
		(define setTAGLINE "../../all/tagline-simple.ily")
		(define setTAGLINE "../../all/tagline-double.ily")
	)
	\include \setTAGLINE
	% \include "../all/tagline-simple.ily"
	% \include "../all/tagline-double.ily")
}
