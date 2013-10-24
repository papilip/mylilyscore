\version 		"2.17.29"
\language 		"italiano"

\score {
        \new Staff
        <<
        	\clef "G_8"
        	\relative do'
		<<  
			{ r4	dod8	si	dod[	sol]	si	la }
		\\
			{ la,1 }
		>>
        	% \clef "G_8"
         %        \new Voice { 	\relative do' {	r4	dod8	si	dod[	sol]	si	la } }
         %        \new Voice {	\relative do  {	la1 } }
        >>
}
