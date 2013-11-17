\version "2.17.6"
%les information liées à l'entête et au papier
%#(define minSYSTEMSperPAGE 3)
\include "../../all/paper.ly"

\header{
	% Les champs suivants sont centrés
	%dedication	= "dedication"
	title		= "Magnificat - 10 - Suscepit Israel"
	subtitle		= "Trio pour Soprano I, II et Alto"
	%subsubtitle	= "subsubtitle"
	%instrument	= "Instrument"

	% Les champs suivants sont alignés sur le bord gauche
	%poet		= "poet"
	%meter		= "meter"

	% Les champs suivants sont alignés sur le bord droit
	%composer	= ""
	%arranger	= "arranger"

	revision		= "0.1"
	\include "../../all/tagline.ly"
}

% permet de remettre la taille à 1 pour le debug de l'écriture, à mettre en commentaire pour la partition finale
%#(define taille	1)

global = {
	\key re \major
	\time 3/4

	% la mise en forme desnuances
	\include "../../all/dynamic_text_spanner.ly"

	% l'écriture des numéros de mesures
	\include "../../all/score_barnumber.ly"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%	les importations
%%%

% CHANTS
chantSOPRANOA	= \lyricmode	{ \include "chant_sopranoa.ly" }
chantSOPRANOB	= \lyricmode	{ \include "chant_sopranob.ly" }
chantALTO	= \lyricmode	{ \include "chant_alto.ly" }

% MUSIC
musicSOPRANOA	= \relative do''	 { \include "music_sopranoa.ly" }
musicSOPRANOB	= \relative do''	 { \include "music_sopranob.ly" }
musicALTO	= \relative do''	 { \include "music_alto.ly" }
