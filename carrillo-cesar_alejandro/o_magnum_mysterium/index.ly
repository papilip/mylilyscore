\version "2.17.6"
%les information liées à l'entête et au papier
\include "../../paper.ly"

\header{
	% Les champs suivants sont centrés
	%dedication	= "dedication"
	title		= "O MAGUM MYSTERIUM"
	%subtitle	= ""
	%subsubtitle	= "subsubtitle"
	%instrument	= "Instrument"

	% Les champs suivants sont alignés sur le bord gauche
	%poet		= "poet"
	%meter		= "meter"

	% Les champs suivants sont alignés sur le bord droit
	%composer	= "César-Alejandro CARRILLO (2000)"
	composer		= \markup { César-Alejandro CARRILLO \italic {(2000)} }
	arranger		= ""

	revision		= "0.1"
	\include "../../tagline.ly"
}

% permet de remettre la taille à 1 pour le debug de l'écriture, à mettre en commentaire pour la partition finale
#(define taille	1)

global = {
	% Pas de clé générale, changement en cours de partition
	%\key solb \major
	
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
chantALTO	= \lyricmode	{ \include "chant_soprano.ly" }
chantTENOR	= \lyricmode	{ \include "chant_tenor.ly" }
chantBASSE	= \lyricmode	{ \include "chant_basse.ly" }

% MUSIC
musicSOPRANO	= \relative do''	 {
			\key solb \major
			\include "music_soprano0.ly" 
			\key mib \major
			\include "music_soprano1.ly" 
		}
musicALTO	= \relative do''	 {
			\key solb \major
			\include "music_alto0.ly" 
			\key mib \major
			\include "music_alto1.ly" 
		}
musicTENOR	= \relative do'	 { \include "music_tenor.ly" }
musicBASSE	= \relative do'	 { \include "music_basse.ly" }
