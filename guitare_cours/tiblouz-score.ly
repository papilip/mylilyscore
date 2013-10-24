%%% tiblouz-score.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version 		"2.17.29"
\language 		"italiano"

\include 		"header-local.ily"
#(define setTITLE	"tiblouz")
#(define setREVISION	"0")
#(define setTAGLINEnbl	1)

#(define setCOLOR	blue)
% #(set-global-staff-size 20)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
	\include	"../all/header-all.ily"
	\markup { \vspace #3 }
	\score {
		\new StaffGroup 
			% \with { instrumentName = \markup { \with-color \setCOLOR \circle " 1.A " } }
		<<
	                \new Staff
	                <<
	                	\clef "G_8"
	                        \new Voice { 	\relative do' {	\include "tiblouz-music_a.ily" } }
	                        \new Voice {	\relative do  {	\include "tiblouz-music_b.ily" } }
	                >>
	                % \new TabStaff
	                % <<
	                %         \relative do' {	\include "tiblouz-music_a.ily" }
	                %         \relative do  {	\include "tiblouz-music_b.ily" }
	                % >>
		>>
	}
}
