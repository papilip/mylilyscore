\version "2.17.26"

\relative c' {
 	\dynamicUp
	\once \override DynamicText #'extra-offset = #'(-3 . -2)
	fis'4.\mf->	e8^\markup { 
		\column {
	     		\line { 
	     			\override #'(font-name . "RomandeADFNo2Std Regular")	"V.1: 1st" 
	             		\override #'(font-name . "RomandeADFStyleStd Regular")	"sopranos" 
	             	}
	     		\line {
	     			\override #'(font-name . "RomandeADFNo2Std Regular")	"V.2: 1st"
	     			\override #'(font-name . "RomandeADFStyleStd Regular")	"tenors"
	     		}
 		}
	}
        dis[ e fis dis] e4. dis8 cis[ dis e cis]
}
