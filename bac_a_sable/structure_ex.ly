% Created on Thu Mar 21 11:27:42 CET 2013
\version "2.15.37"
 #(set-global-staff-size 15)
\header {
	

}
\paper {
  #(set-paper-size "a4")
    #(define bottom-margin (* 1 cm))
  print-all-headers = ##t
 
}
global = 
{
	\time 4/4
	\key c \major

}
verse= \lyricmode {
	\repeat unfold 128 { la }
}
 
structure = 
{
	s1*4
	\break 
	\repeat volta 2 
	{
		s1*4
	}
	\alternative
	{
		{
			s1*4
		}
		{
			s1*4
		}
	}
	\bar "||" \break
	s1*8 \bar "||" \break
	s1*8
	\bar "|."
}
melody = 
	\relative c' { 	\global
			\clef treble
	
			\repeat unfold 32 {c4 d e f}
		}

	
	


pianor = \relative c' 	{
				\global
				\clef treble
				\repeat unfold 32 {e4 f g a}
			}
pianol = \relative c 	{
				\global
				\clef bass
				\relative c {
				\repeat unfold 8 {c1 a f g}
			}
		}


harmonies =  \chordmode {
	\repeat unfold 8 {c1:maj7 a:m7 f:maj7 g:7}
	
}
\book
{
	\score {
		<<
		\new ChordNames \harmonies
		\new Staff {<< \melody \structure>>}
		\addlyrics { \verse }
		\new PianoStaff { <<
			\new Staff { \pianor }   
			\new Staff { \pianol }
				>>
			}
   
		>>
		\header {
			title = "Structure dans une variable"
			subtitle = "Chant + piano"
		}
    	}
    	\pageBreak
	\score {	
		 <<
		 \new ChordNames \harmonies
		 \new Staff {<< \melody \structure>>}
		 \addlyrics { \verse }
	 	 >>
	 	 \header {
	 	 	 title = "Structure dans une variable"
	 	 	 subtitle = "Chant"
	 	 }
    	}
    	\pageBreak
	\score {		
		<<
		\new ChordNames \harmonies
		\new PianoStaff { << 
			\new Staff { << \pianor \structure >> }   
			\new Staff { \pianol }
		    		>>
			}
   
		>>
		\header {
			title = "Structure dans une variable"
			subtitle = "Piano"
		}
    	}
}
