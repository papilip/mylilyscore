\version 		"2.17.26"

% #(define setTITLE 	"Donne-moi ton regard")
#(define setTITLE 	"Hélène et Philippe")
#(define setLETTRINE 	(substring setTITLE 0 1))
#(define setSUITE 	(substring setTITLE 1))

\markup\column {
\concat {
% \magnify #4 \bold "D"
\magnify #4 \bold \setLETTRINE
\raise #3.5
\column {
% \magnify #2 \bold "onne-moi ton regard"
\magnify #2 \bold \setSUITE
\magnify #1.5 \italic "© Ateliers du Fresne."
}
}
\bold {
" "
"Donne-moi ton regard, Ô Seigneur,"
"Apprends-moi à te voir."
"Montre-toi dans le Frère, Ô Seigneur,"
"Donne-moi ton regard."
}
}
