\version  "2.19.83"
%%%
%%% header-local.ily
%%% Fichier à utiliser avant l’importation du fichier ../all/header-all.ily
%%%
\language "français"

% Les champs suivants sont centrés
%my_dedication   = ""
%my_title        = ""
%my_subtitle     = ""
%my_subsubtitle  = ""
%my_instrument   = ""

% Les champs suivants sont alignés sur le bord gauche
my_poet         = "Trompette en Ut"
my_meter        =
  \markup {
    \column {
      \raise #3 \line { \teeny	{ Conservatoire de Rungis } }
      \raise #5 \line { \teeny	{ Formation musicale avec Vicente José Luna Pomares } }
    }
  }

% Les champs suivants sont alignés sur le bord droit
%my_composer     = ""
%my_arranger     = ""
