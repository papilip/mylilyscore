\version "2.17.26"

% Version NN de la partition gravée le 01/01/2013 à 10:02 
% par philippe@nenert.net grâce à LilyPond.org
tagline		=
	\markup {
		\center-column {
			\line	{
				\small	{
					Version \simple #revision de la partition gravée
					\simple #(strftime "le %d/%m/%Y à %H:%M" (localtime (current-time)))
				}
			}
			\line	{
				\small	{
					par
					\with-url #"mailto:philippe@nenert.net" { philippe+lilypond@nenert.net }
					grâce à
					\with-url #"http://lilypond.org/"	{ LilyPond.org }
				}
			}
		}
	}
