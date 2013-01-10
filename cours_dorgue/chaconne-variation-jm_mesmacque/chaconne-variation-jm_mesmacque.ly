\version "2.17.6"
%les information liées à l'entête et au papier
#(define minSYSTEMSperPAGE 1)
\include "../../all/paper.ly"

\header{
	% Les champs suivants sont centrés
	title		= "Variation sur une basse de J.S Bach"
	subtitle		= "Par J.M. Mesmacque"

	revision		= "0.1"
	\include "../../all/tagline.ly"
}

global = {
	\key sol \major
	\time 2/4
}

musicZEROsol	= \relative do''	{
			\key sol \major
 			\time 2/4	
			\clef treble
			R2*4
		}
musicZEROfa	= \relative do'	{
			\key sol \major
 			\time 2/4	
			\clef bass
			sol4	fad	mi	re	si	do	re	sol
		}
musicUNsol	= \relative do''	{
			\key sol \major
 			\time 2/4	
			\clef treble
			R2*4
		}
musicUNfa	= \relative do'	{
			\key sol \major
 			\time 2/4	
			\clef bass
			sol4	fad	mi	re	si	do	re	sol
		}
		
		
		
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
	<<
		\new PianoStaff <<
			\new Staff 	\with {instrumentName = "0Md."}	{\musicZEROsol}
			\new Staff 	\with {instrumentName = "0Mg."}	{\musicZEROfa}
		>>
		\new PianoStaff <<
			\new Staff 	\with {instrumentName = "0Md."}	{\musicZEROsol}
			\new Staff 	\with {instrumentName = "0Mg."}	{\musicZEROfa}
		>>
	>>
}
