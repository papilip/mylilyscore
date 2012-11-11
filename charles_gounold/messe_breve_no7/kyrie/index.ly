\version "2.16.0"
\language "italiano"
\paper {
	first-page-number		= #2		% Afin d'avoir la reliure du “bon” côté !
	print-page-number		= ##f

	binding-offset		= 0.25\cm	% Marge de reliure
	inner-margin		= 1.25\cm	% Marge intérieur
	outer-margin		= 1.25\cm	% Marge extérieur
	two-sided		= ##t

	%oddHeaderMarkup		= ##t
	%evenHeaderMarkup		= ##t

	%last-bottom-spacing	#'basic-distance = #10
	markup-system-spacing	#'basic-distance = #17
	min-systems-per-page	= #4
	ragged-bottom		= ##t	% Met l'ensemble des portées vers le haut
	%score-system-spacing	#'basic-distance = #20
	system-system-spacing	#'basic-distance = #15
	%top-system-spacing	#'basic-distance = #10
	
}
\header{
	% Les champs suivants sont centrés
	%dedication	= "dedication"
	title		= "KYRIE de la messe brève n°7 de Charles GOUNOLD"
	%subtitle		= ""
	%subsubtitle	= "subsubtitle"
	%instrument	= "Instrument"

	% Les champs suivants sont alignés sur le bord gauche
	%poet		= "poet"
	%meter		= "meter"

	% Les champs suivants sont alignés sur le bord droit
	%composer		= ""
	%arranger	= "arranger"

	revision	= "0.1"
	\include "../../../tagline.ly"
}
global = {
	%\key sol \major
	\time 4/4
	
	% Nous compressons les mesures vides et voulons une barre horizontale
	\compressFullBarRests
	\override MultiMeasureRest.expand-limit = #3
	
	% Nous ne voulmons pas de numérotation des mesures en début de portée, mais à chacune
	%\override Score.BarNumber.break-visibility = #'#(#t #t #t)
	\override Score.BarNumber.break-visibility = #'#(#f #t #t)
	% aligne à gauche de la barre
	\override Score.BarNumber.self-alignment-X = #LEFT
	%\override Score.BarNumber.padding = #2.75
	% mets le numéros de mesure en italique
	\override Score.BarNumber.font-shape = #'italic
	\override Score.BarNumber.color = #red
	% Diminue la taille du numéro
	\override Score.BarNumber.font-size = #-4
	% Mettre un jolie rond entourant les numéros de mesures
	%\override Score.BarNumber.stencil = #(make-stencil-circler 0.1 0.05 ly:text-interface::print)

	% pas de pointillé derrière les nuances
	\override DynamicTextSpanner #'style = #'none
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%	les importations
%%%

% CHANTS
chantSOPRANO	= \lyricmode	{ \include "chant_soprano.ly" }
chantALTO	= \lyricmode	{ \include "chant_alto.ly" }
chantTENOR	= \lyricmode	{ \include "chant_tenor.ly" }
chantBASSE	= \lyricmode	{ \include "chant_basse.ly" }

% MUSIC
musicSOPRANO	= \relative do'	 { \include "music_soprano.ly" }
musicALTO	= \relative do'	 { \include "music_alto.ly" }
musicTENOR	= \relative do'	 { \include "music_tenor.ly" }
musicBASSE	= \relative do'	 { \include "music_basse.ly" }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%	Variables
%%%%%
#(define taille		-2)
%#(define taille		1)

#(define	TAILLEchantSOPRANO	1)
#(define	TAILLEchantALTO		1)
#(define	TAILLEchantTENOR		1)
#(define	TAILLEchantBASSE		1)

#(define	TAILLEmusicSOPRANO	1)
#(define	TAILLEmusicALTO		1)
#(define	TAILLEmusicTENOR		1)
#(define	TAILLEmusicBASSE		1)

#(define	pourSOPRANO	#f)
#(define	pourALTO		#f)
#(define	pourTENOR	#f)
#(define	pourBASSE	#f)

#(define	tailleGRAND	1)
#(define	taillePETIT	1)


#(define couleur		blue)
\include "../../../bgcolor.ly"