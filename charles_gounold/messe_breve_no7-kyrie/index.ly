%les information liées à l'entête et au papier
\include "../../paper.ly"

\header{
	% Les champs suivants sont centrés
	%dedication	= "dedication"
	title		= "KYRIE de la messe brève n°7 de Charles GOUNOLD"
	%subtitle	= ""
	%subsubtitle	= "subsubtitle"
	%instrument	= "Instrument"

	% Les champs suivants sont alignés sur le bord gauche
	%poet		= "poet"
	%meter		= "meter"

	% Les champs suivants sont alignés sur le bord droit
	%composer	= ""
	%arranger	= "arranger"

	revision		= "0.2"
	\include "../../tagline.ly"
}

% permet de remettre la taille à 1 pour le debug de l'écriture, à mettre en commentaire pour la partition finale
%#(define taille	1)

global = {
	%\key sol \major
	\time 4/4

	% la mise en forme desnuances
	\include "../../dynamic_text_spanner.ly"

	% l'écriture des numéros de mesures
	\include "../../score_barnumber.ly"
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
