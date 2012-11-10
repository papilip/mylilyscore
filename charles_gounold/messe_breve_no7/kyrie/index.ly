\version "2.16.0"
\language "italiano"
\paper {
	%first-page-number		= #2		% Afin d'avoir la reliure du “bon” côté !
	%print-page-number		= ##f

	binding-offset		= 0.75\cm	% Marge de reliure
	inner-margin		= 1.25\cm	% Marge intérieur
	outer-margin		= 1.25\cm	% Marge extérieur
	%two-sided		= ##t

	%oddHeaderMarkup		= ##t
	%evenHeaderMarkup		= ##t

	%last-bottom-spacing	#'basic-distance = #10
	markup-system-spacing	#'basic-distance = #17
	min-systems-per-page	= #3
	ragged-bottom		= ##t	% Met l'ensemble des portées vers le haut
	%score-system-spacing	#'basic-distance = #20
	system-system-spacing	#'basic-distance = #15
	%top-system-spacing	#'basic-distance = #10
	
}
\header{
	% Les champs suivants sont centrés
	%dedication	= "dedication"
	title		= "Messe brève n°7"
	subtitle		= "KYRIE"
	%subsubtitle	= "subsubtitle"
	%instrument	= "Instrument"

	% Les champs suivants sont alignés sur le bord gauche
	%poet		= "poet"
	%meter		= "meter"

	% Les champs suivants sont alignés sur le bord droit
	composer		= "Charles GOUNOLD"
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
	% mets le numéros de mesure en italique
	\override Score.BarNumber.font-shape = #'italic
	% Diminue la taille du numéro
	%\override Score.BarNumber.font-size = #-4
	% Mettre un jolie rond entourant les numéros de mesures
	%\override Score.BarNumber.stencil = #(make-stencil-circler 0.1 0.05 ly:text-interface::print)
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%	les importations
%%%
%%%%%%%%
% CHANTS
chantALTO	= \lyricmode	{
	\include "chant_alto.ly"
}
chantBASSE	= \lyricmode	{
	\include "chant_basse.ly"
}
chantSOPRANO	= \lyricmode	{
	\include "chant_soprano.ly"
}
chantTENOR	= \lyricmode	{
	\include "chant_tenor.ly"
}
%%%%%%%%
% MUSIC
musicALTO	= \relative do'	 {
	\include "music_alto.ly"
}
musicBASSE	= \relative do'	 {
	\include "music_basse.ly"
}
musicSOPRANO	= \relative do'	 {
	\include "music_soprano.ly"
}
musicTENOR	= \relative do	 {
	\include "music_tenor.ly"
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%	Variables
%%%%%
%#(define taille		-2)
#(define taille		1)
#(define couleur		blue)
\include "../../../bgcolor.ly"