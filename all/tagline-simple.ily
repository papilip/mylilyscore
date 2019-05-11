\version "2.17.26"

% Version NN de la partition gravée le 01/01/2013 à 10:02 par philippe@nenert.net grâce à LilyPond.org
tagline = \markup {
	\small {
		% Version \simple #revision de la partition gravée
		% \simple #(strftime "le %d/%m/%Y à %H:%M" (localtime (current-time)))
		% par
		% \with-url #"mailto:philippe@nenert.net"	{ philippe+lily@nenert.net }
		% grâce à
		% \with-url #"http://lilypond.org/"	{ LilyPond.org }

		Partition gravée le
		\bold { \simple #(strftime "%d/%m/%Y"	(localtime (current-time))) }
		à
		\bold { \simple #(strftime "%H:%M"	(localtime (current-time))) }
		par
		\bold { \with-url #"mailto:me+lilypond@papilip.me" { Philippe Nénert Dervillez } }
		grâce à
		\bold { \with-url #"http://lilypond.org/" { LilyPond.org } }
	}
}
