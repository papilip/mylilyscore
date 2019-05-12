\version "2.17.26"
%%%
%%% header-all.ily
%%% Fichier permettant la préparation des variables pour leur utilisation avce un header-local
%%%
%%% Gestion d’une tagline sur une ou deux lignes avec la variable \setTAGLINEnbl (=1 ou =2)
%%%
\header{
	% Les champs suivants sont centrés
	dedication	= \setDEDICATION
	title				= \setTITLE
	subtitle		= \setSUBTITLE
	subsubtitle	= \setSUBSUBTITLE
	instrument	= \setINSTRUMENT

	% Les champs suivants sont alignés sur le bord gauche
	poet				= \setPOET
	meter				= \setMETER

	% Les champs suivants sont alignés sur le bord droit
	composer		= \setCOMPOSER
	arranger		= \setARRANGER

	% revision	= \setREVISION

	#(if	(< setTAGLINEnbl 2)
		(define setTAGLINE "../../all/tagline-simple.ily")
		(define setTAGLINE "../../all/tagline-double.ily")
	)
	\include \setTAGLINE
}
