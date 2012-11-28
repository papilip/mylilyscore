\version "2.17.6"
%les information liées à l'entête et au papier
#(define minSYSTEMSperPAGE 3)
\include "../../paper.ly"

\header{
	% Les champs suivants sont centrés
	%dedication	= "dedication"
	title		= "Les anges dans nos campagnes"
	subtitle		= "(Le message des Anges)"
	%subsubtitle	= "subsubtitle"
	%instrument	= "Instrument"

	% Les champs suivants sont alignés sur le bord gauche
	%poet		= "poet"
	%meter		= "meter"

	% Les champs suivants sont alignés sur le bord droit
	%composer	= ""
	%arranger	= "arranger"

	revision		= "0.1"
	\include "../../tagline.ly"
}

% permet de remettre la taille à 1 pour le debug de l'écriture, à mettre en commentaire pour la partition finale
%#(define taille	1)

global = {
	\key sol \major
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
chantSOPRANO	= \lyricmode	{ \include "chant_11.ly"
				  \include "chant_12.ly"
				  \include "chant_13.ly"
				  \include "chant_14.ly"
				  \include "chant_15.ly"
				  \include "chant_16.ly"
 				}
chantCONTRALTO	= #chantSOPRANO
chantTENOR	= \lyricmode	{ \include "chant_11.ly"
				  \include "chant_12.ly"
				  \include "chant_13.ly"
				  l’é --	cho,
				  \include "chant_14.ly"
				  \include "chant_15.ly"
				  \include "chant_16.ly"
 				}
chantBASSE	= \lyricmode	{ \include "chant_12.ly"
				  \include "chant_15.ly"
				  Glo -- __ ri -- a De -- __ o_!
 				}

% MUSIC
musicSOPRANO	= \relative do''	 { \include "music_soprano.ly" }
musicCONTRALTO	= \relative do''	 { \include "music_contralto.ly" }
musicTENOR	= \relative do'	 { \include "music_tenor.ly" }
musicBASSE	= \relative do	 { \include "music_basse.ly" }
