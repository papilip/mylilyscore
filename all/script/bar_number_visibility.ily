\version "2.19.3"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% La numérotation des mesures
% Fonction pour afficher ou pas les numéros de mesure
% Usage :
%  \barNumberVisibility ##t    Pour obtenir les numéros de mesure
%  \barNumberVisibility ##f    Pour effacer les numéros de mesure
barNumberVisibility =
  #(
    define-music-function (parser location arg) (boolean?)
    #{ \override Score.BarNumber.break-visibility = #(vector #f arg arg) #}
  )
