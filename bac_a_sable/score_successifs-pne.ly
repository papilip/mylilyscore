\version "2.14.2"
%\paper {
%	print-all-headers = ##t
%} 
\header {
	title = "Exercices ..."
	tagline = ""
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Partition 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
right = \relative c'' {
	\key a \minor
	\numericTimeSignature
	\time 6/8
	\partial 4.
	% En avant la musique !
	a4 a8
	e'4 e8 d4 e8
	c4. c4 b8
	a8 b c b4 a8
	gis4 e8 a4 a8
	e'4 e8 d4 e8 
	c4. d
	e b8 c b 
	a4. r4 r8 \bar "||"
}
left = \relative c' {
	% En avant la musique !
	r4 r8
	r2. r2. r2. r2.  r2. r2. r2. r2.
}
\header {
	piece = "Compagnons de la marjolaine"
%	subtitle = "3 - 15 - A"
}
\score {
	\new PianoStaff \with {
		instrumentName = "Piano"
	} 
	<<
		\new Staff = "right" \with {
			midiInstrument = "acoustic grand"
		} \right
		\new Staff = "left" \with {
			midiInstrument = "acoustic grand"
		} 
		{ \clef bass \left }
	>>
  	\layout { }
  	\midi {
    		\context {
      			\Score
      			tempoWholesPerMinute = #(ly:make-moment 100 4)
    		}
  	}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Partition 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
right = \relative c'' {
  \global
  % En avant la musique !
  r8 g g a
  b a g a 
  b2
  b8 g b d
  b4. b8
  d b a g 
  a2
  r8 d, d' c
   b g b c
   b \fermata g b c 
    d d e e
    d4 c
    b r8 g
    b2
    a
    g ~ g \bar "||"
  
}
\header {
  title = "Rue Saint-Vincent"
  subtitle = "Récitatif"
  subsubtitle = "369 - 16 - A B C D E F"
  composer = "A. Bruant"
}
left = \relative c' {
  \global
  % En avant la musique !
  r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 
  
  
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
    }
  }
}




