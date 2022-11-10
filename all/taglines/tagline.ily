%tagline	= "Musique gravée par philippe@nenert.net à l'aide de LilyPond.org"
tagline		=
	\markup {
		\italic \teeny {
			% Version \simple #revision de la 
			Partition gravée
			\simple #(strftime "le %d/%m/%Y à %H:%M" (localtime (current-time) ) )
			par
			\with-url #"mailto:philippe@nenert.net" {
				philippe@nenert.net
			}
			grâce à
			\with-url #"http://lilypond.org/" {
				LilyPond.org
			}
		}
	}
