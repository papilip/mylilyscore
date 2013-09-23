\language "italiano"

\paper {
%  first-page-number	= #2    % Afin d'avoir la reliure du “bon” côté !
  print-page-number	= ##f

  binding-offset	= 0.25\cm % Marge de reliure
  inner-margin		= 1.25\cm % Marge intérieur
  outer-margin		= 1.25\cm % Marge extérieur
  two-sided		= ##t

  %oddHeaderMarkup	= ##t
  %evenHeaderMarkup	= ##t

  %last-bottom-spacing	#'basic-distance  = #10
  %markup-system-spacing	#'basic-distance  = #17
  %min-systems-per-page	= #minSYSTEMSperPAGE
  ragged-bottom		= ##t % Met l'ensemble des portées vers le haut
  %score-system-spacing	#'basic-distance  = #20
  %system-system-spacing	#'basic-distance  = #15
  %top-system-spacing	#'basic-distance  = #10 
}

\include "../all/bgcolor.ly"

%La couleur que nous voulons pour mettre en valeur le texte de mon pupitre
#(define couleur  red)

% La variable de taille des portées
#(define taille -2)
