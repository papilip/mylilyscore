\version "2.17.8"
%les information liées à l'entête et au papier
#(define	minSYSTEMSperPAGE	3)
\include "../all/paper.ly"

\header{
	% Les champs suivants sont centrés
	%dedication	= "dedication"
	title		= "Sanctus de la messe brève n°7 de Charles GOUNOD"
	%subtitle	= ""
	%subsubtitle	= "subsubtitle"
	%instrument	= "Instrument"

	% Les champs suivants sont alignés sur le bord gauche
	%poet		= "poet"
	%meter		= "meter"

	% Les champs suivants sont alignés sur le bord droit
	%composer	= ""
	%arranger	= "arranger"

	revision		= "1"
	\include "../all/tagline.ly"
}

% permet de remettre la taille à 1 pour le debug de l'écriture, à mettre en commentaire pour la partition finale
%#(define taille	1)

global = {
	%\key sol \major
	\time 4/4

	% la mise en forme desnuances
	\include "../all/dynamic_text_spanner.ly"

	% l'écriture des numéros de mesures
	\include "../all/score_barnumber.ly"
	
	% commender à la mesure 177
	\set Score.currentBarNumber = #177
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%	les importations
%%%

% CHANTS
chantSOPRANO	= \lyricmode {	\include "chant0.ly"
				\include "chant1.ly" }
chantALTO	= \lyricmode {	\include "chant0.ly" 
				\include "chant1.ly" }
chantTENOR	= \lyricmode {	\include "chant0.ly"
				Ple --	ni	sunt	coe --	li	et	ter --	ra	glo --	ri --	a	Tu --	a,
				ple --	ni	sunt	coe --	li	et	ter --	ra	glo --	ri --	a	Tu --	a.
				\include "chant1.ly" }
chantBASSE	= \lyricmode {	\include "chant0.ly"
				Ple --	ni	sunt	coe --	li	et	ter --	ra	glo --	ri --	a	Tu --	a.
				\include "chant1.ly" }

musicSOPRANO	= \relative do''	 { \include "music_soprano.ly" }
musicALTO	= \relative do''	 { \include "music_alto.ly" }
musicTENOR	= \relative do'	 { \include "music_tenor.ly" }
musicBASSE	= \relative do'	 { \include "music_basse.ly" }
