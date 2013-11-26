%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.12.3"


%---------------------------Notation en français
\include "italiano.ly"
%------------------------------------------- Titres et entetes
\header {
 title      =                       "Promenade Aux Champs Élysées Impro"
 composer   =                       "Bayani"
 arranger   =                       "Arr.: Bayani R. Baldevarona"
 instrument = \markup \italic       "Sax. Soprano"
 piece      = \markup \italic \bold "Moderate"
 tagline    = "42"
       }
%---------------routine de reprise debut
%repriseaudebut = {
% \once \override Score.BreakAlignment #'break-align-orders =
%   #(make-vector 3 '(instrument-name
%                     left-edge
%                     ambitus
%                     span-bar
%                     breathing-sign
%                     clef
%                     key-signature
%                     time-signature
%                     staff-bar
%                     custos
%                     span-bar))
%    \once \override Staff.TimeSignature #'space-alist =
%    #'((first-note . (fixed-space . 2.0))
%       (right-edge . (extra-space . 0.5))
%       ;; free up some space between time signature
%       ;; and repeat bar line
%       (staff-bar . (extra-space . 1)))
%    \bar "||:"
%                  }
%---------------routine de reprise  debut
repriseaudebut = {
\once \override Score.BreakAlignment #'break-align-orders =
  #(make-vector 3 '(instrument-name
                    left-edge
                    ambitus
                    span-bar
                    breathing-sign
                    clef
                    key-signature
                    time-signature
                    staff-bar
                    custos
                    span-bar))
   \once \override Staff.TimeSignature #'space-alist =
   #'((first-note . (fixed-space . 2.0))
      (right-edge . (extra-space . 0.5))
      ;; free up some space between time signature
      ;; and repeat bar line
      (staff-bar . (extra-space . 1)))
   \bar "||:"
                }
%----------------------------------------- taille de la portee
#(set-global-staff-size 22)

saxSoprano =
% armure
\relative do'' {
 \clef treble
	\time 4/4
	\key sib \major

%-------------------------- reprisereprise
	

 \set Score.markFormatter = #format-mark-box-alphabet

%  \mark \markup  {
%   \small \raise #1 \musicglyph #"scripts.segno"
%   \small \raise #1
% \box  \A }
\bar "||"
	
%1 numero de mesure
 r8\mark \default fa8->~ fa [mi16 mib] re4. sib8 |
%2
 re sib re sib fa fa~ fa4 |
%3	
 r8 fa'8->~ fa [mi16 mib] re4. sib8 |
%4
 re sib re sib la sol~ sol4 |
%5
 r8 re' fa la sol re sib la |
%6
 sol sib re4 mi8 re16mi~ mi4 |
%7
 mi8 re16 mi~ mi2. |
%8
 solb8 fa16 solb~ solb2.  | % "saxSoprano"  % on "appelle" la variable d‚àö¬©finie ci-dessus
 % }
%9
 r8 mi,8 sol [mi] fa la do mib  |
%10
 sol4 fa8 la,~ la2 |
%11
 r8 dod, mi [dod re fad] la dod |
%12
 mi4 re8 fad,~ fad2 |
%13
 r8 la4 sol8 la4. sol8 |
%14
 la do la sol la sol~ sol4 |
%15
 sib2 la|
%16
 reb do
 \bar "||"

%17 - 18
  \repeat percent 2 {r8 \mark \default re mib [fa]~ fa2 } |
%19	
 sib8 sol sib sol~ sol fa re sol, |
%20
 do4 do8 sib~ sib4 r4|
%21
 sib'4 fa8 sol~ sol4 sol |
%22
 sib8 sol fa sol~ sol2 |
%23
 si4 sol fa8 sol~ sol4 |
%24
 sib!8 sol mi dod sib4 sib |
%25
 fa'4 mib8 fa8 mib4 solb, |
%26
 \override Glissando #'style = #'zigzag
 do4. sib8 do4 sib\glissando |
%27
 fa'1 |
%28
 re8 do4 re8 do4 re |
%29
 sol1 |
%30
 do,8 sib4 do8 sib4 do |
%31
 solb'1 |
%32
 r8 sib,4 sol8 sib4. sol8
%33
 \times 2/3 {sib4 sol sib} re fa, |
%34
 sib8 do-> sib sib~sib re-> sib sib~ |
%35
 sib [fa']-> sib, [sib]~ sib fa'4.-> \segno \bar "||" |
 \break
%36
  r8 \coda sib,4 sol8 sib4. sol8 |
%37
 \times 2/3 {sib4 sol sib} re fa, |
%38
 sib2. fa'8 mi16 mib |
%39
 re4 re8 re8~ re2 |
%40
 re4 sol,8 sib~ sib4 re4 |
%41
 re sol,8 sib~ sib2 |
%42
 do4 solb8 sib8~ sib4 do |
%43
 re solb,8 sib~ sib4. solb8 |
%44
 re'4 sol,8 sib~ sib4. sol8 |
%45
 \times 2/3 {sib4 sol sib} re fa |
%46
 sib8 [fa]~ fa mi16 mib re8 sib sol fa~ |
%47
 fa1

	\once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
	\once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
	\once \override Score.RehearsalMark #'direction = #DOWN
	\mark \markup "Fine"
 \bar"||"
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Block score
\score {
 <<
   \new Staff

 \set Staff.midiInstrument = "soprano sax" { \saxSoprano }
    % "saxSoprano"  % on "appelle" la variable d‚àö¬©finie ci-dessus

 >>

 \layout {  }
 \midi {  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
