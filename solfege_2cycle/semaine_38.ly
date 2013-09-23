\version "2.17.26"

%les information liées à l'entête et au papier
#(define  minSYSTEMSperPAGE 1)
\include "../all/solfege.ly"

\header{
  % Les champs suivants sont centrés
  %dedication = "dedication"
  title   = "Semaine 38"
  %subtitle = ""
  %subsubtitle  = "subsubtitle"
  %instrument = "Partie pour trompette en ut"

  % Les champs suivants sont alignés sur le bord gauche
  %poet    = "poet"
  %meter    = "meter"

  % Les champs suivants sont alignés sur le bord droit
  %composer = ""
  %arranger = "arranger"

  revision    = "0.0"
  \include "../all/tagline.ly"
}

% permet de remettre la taille à 1 pour le debug de l'écriture, à mettre en commentaire pour la partition finale
%#(define taille 1)

musicA  = \relative do'    { \include "semaine_38-music_a.ly" }
musicB  = \relative do''   { \include "semaine_38-music_b.ly" }
musicC  = \relative do''   { \include "semaine_38-music_c.ly" }

\score {
        \musicA
}
\score {
        \musicB
}
\score {
	\new RhythmicStaff {
		\musicC
	}
}
