% %tagline	= "Musique gravée par philippe@nenert.net à l'aide de LilyPond.org"
% tagline		=
% 	\markup {
% 		% \draw-hline
% 		\line	{
% 			\left-column {
% 				Paroles er musique : Communauté de l’Emmanuel (L. Brodin)
% 			}
% 			\right-column {
% 					N° 25-06
% 			}
% 			\line	{
% 				\left-column {
% 					© 2019, Édition de l’Emmanuel, 89 boulevard Blanqui, 75013 Paris
% 				}
% 				\right-column {
% 					CD n° 65
% 				}
% 			}
% 		}
% 		% \draw-hline
% 		\line	{
% 			\center-column {
% 				\line	{
% 					\italic \teeny {
% 						Partition gravée
% 						\simple #(strftime "le %d/%m/%Y à %H:%M" (localtime (current-time) ) )
% 						par
% 						\with-url #"mailto:philippe@nenert.net" {
% 							philippe@nenert.net
% 						}
% 						grâce à
% 						\with-url #"http://lilypond.org/" {
% 							LilyPond.org
% 						}
% 					}
% 				}
% 			}
% 		}
% 	}

tagline		= \markup {
	Paroles er musique : Communauté de l’Emmanuel (L. Brodin)
	© 2019, Édition de l’Emmanuel, 89 boulevard Blanqui, 75013 Paris
}
% \markup {
%   \fill-line {
%     % décalage par rapport à la marge de gauche
%     % peut être supprimé si l'espace sur la page est réduit
%     \hspace #0.1
%     \column {
%       \line { \bold "2."
%         \column {
%           "Sous les feuilles d'un chêne"
%           "Je me suis fait sécher..."
%         }
%       }
%       % ajout d'espace vertical entre les couplets
%       \combine \null \vspace #0.1
%       \line { \bold "3."
%         \column {
%           "Chante, rossignol, chante,"
%           "Toi qui as le cœur gai..."
%         }
%       }
%     }
%     % ajout d'espace horizontal entre les colonnes
%     \hspace #0.1
%     \column {
%       \line { \bold "4."
%         \column {
%           "J'ai perdu mon ami"
%           "Sans l'avoir mérité..."
%         }
%       }
%       % ajout d'espace vertical entre les couplets
%       \combine \null \vspace #0.1
%       \line { \bold "5."
%         \column {
%           "Je voudrais que la rose"
%           "Fût encore au rosier..."
%         }
%       }
%     }
%     % décalage par rapport à la marge de droite
%     % peut être supprimé si l'espace sur la page est réduit
%     \hspace #0.1
%   }
% }
