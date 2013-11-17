\version "2.17.6"
%les information liées à l'entête et au papier
#(define minSYSTEMSperPAGE 3)
\include "../../all/paper.ly"

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
	\include "../../all/tagline.ly"
}

% permet de remettre la taille à 1 pour le debug de l'écriture, à mettre en commentaire pour la partition finale
%#(define taille	1)

global = {
	\key sol \major
	\time 4/4

	% la mise en forme desnuances
	\include "../../all/dynamic_text_spanner.ly"

	% l'écriture des numéros de mesures
	\include "../../all/score_barnumber.ly"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%	L'accolade verticale
%%%
leftbrace	= \markup {\override #'(font-encoding . fetaBraces) \lookup #"brace100" }
rightbrace	= \markup {\rotate #180 \leftbrace }



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%	les importations
%%%

% CHANTS
chantSOPRANOun	= \lyricmode {	\include "chant_11.ly"
				\include "chant_12.ly"
				\include "chant_13.ly"
				\include "chant_14.ly"
				\include "chant_15.ly"
				\markup{	\rightbrace	Glo }
				\include "chant_16.ly"
 			}
chantSOPRANOdeux	= \lyricmode {	\include "chant_21.ly"
				\include "chant_22.ly"
				\include "chant_23.ly"
				\include "chant_24.ly"
				\include "chant_25.ly"
 			}
chantCONTRALTOun	= #chantSOPRANOun
chantCONTRALTOdeux= #chantSOPRANOdeux
chantTENORun	= \lyricmode {	\include "chant_11.ly"
				\include "chant_12.ly"
				\include "chant_13.ly"
				l’é --
				\set ignoreMelismata = ##t
				cho,	l’é --	cho
				\unset ignoreMelismata
				de	nos	mon --	ta --	gnes
				\include "chant_15.ly"
				\markup{	\rightbrace	Glo }
				\include "chant_16.ly"
 			}
chantTENORdeux	=  \lyricmode {	\include "chant_21.ly"
				\include "chant_22.ly"
				\include "chant_23.ly"
				que	vos __	ten --	dres	mu --	set --	tes
				\include "chant_25.ly"
 			}

chantBASSEun	= \lyricmode {	\include "chant_12.ly"
				\include "chant_15.ly"
				\markup{	\rightbrace	Glo }
				-- __ ri -- a De -- __ o_!
 			}
chantBASSEdeux	= \lyricmode {	\include "chant_22.ly"
				\include "chant_25.ly"
			}

% MUSIC
musicSOPRANO	= \relative do''{	\include "music_soprano.ly" }
musicCONTRALTO	= \relative do''{	\include "music_contralto.ly" }
musicTENOR	= \relative do' {	\include "music_tenor.ly" }
musicBASSE	= \relative do  {	\include "music_basse.ly" }
