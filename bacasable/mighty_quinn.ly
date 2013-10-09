
\version "2.16.1"
#(define ma_notation '( 
(crashcymbal	cross		#f	6) 	
(crashcymbala 	cross	 	#f 	6)	
(crashcymbalb 	cross  	#f 	6)	

(ridecymbal 	triangle 	#f 	5)	
(ridecymbala 	triangle 	#f 	5)	
(ridecymbalb 	triangle 	#f 	5)	


(bassdrum		()		#f	-5) 	
(acousticbassdrum () 		#f 	-5)

(snare		()		#f	0) 	
(acousticsnare 	() 		#f  	0)
(sidestick 	cross 	#f 	0)
(electricsnare 	() 		mi 	0)

(openhihat		xcircle 	#f	5)	
(hihat 		cross 	#f 	5)	
(pedalhihat 	cross 	#f 	-5)	
(halfopenhihat 	xcircle 	lheel 5)	

(highfloortom 	() 		#f 	4)	
(hightom 		() 		#f 	3)	
(himidtom 		() 		#f 	1)	
(lowmidtom 	() 		#f 	0)	
(lowtom 		() 		#f 	-1)	
(lowfloortom 	() 		#f 	-3)	

(handclap 	triangle 		#f 	1)
      	
      	(closedhihat cross "stopped" 3)
      
      	(chinesecymbal mensural #f 5)
      	(ridebell () #f 5)
      	(splashcymbal diamond #f 5)
      	(cowbell triangle #f 5)
      	(vibraslap diamond #f 4)

))

\header{
  	title = "Mighty Quinn" 
  	subtitle = "  "
	composer = "GOTTHARD"}

\new DrumStaff 
<<
% \new DrumVoice = "1" { s1 *40 } 
% \new DrumVoice = "2" { s1 *40 } 

% #(override-auto-beam-setting '(end * * 4 4) 3 4) 
% #(override-auto-beam-setting '(end * * 4 4) 1 4) 
	 
\set DrumStaff.drumStyleTable = #(alist->hash-table ma_notation)




\drummode 



{ 
%intro
%\repeat unfold 2
\repeat volta 2
<<
{	cymc4^"intro" hho hho hho 
	hho hho hho hho 
	hho hho hho hho
	hho hho s2  }
	\\
{ 	bd4 <bd sn>4. bd8 <bd sn>4 
	bd4 <bd sn>4. bd8 <bd sn>4
	bd4 <bd sn>4. bd8 <bd sn>4 
	bd4 <bd sn> <bd hh>16 sn hh bd <sn hh> bd hh sn }
>>

% Couplet
<<
{	cymc4^"couplet" hh8 hh hh hh hh hh}
	\\
{	bd4 <bd sn>4. bd8 <bd sn>4}
>>
\repeat unfold 3
<<
{	hh8 hh hh hh hh hh hh hh}
	\\
{	bd4 <bd sn>4. bd8 <bd sn>4}
>>
<<
{	cymc4 hh cymc hh cymc hh cymc s4 }
	\\
{	bd4 <bd sn> bd <bd sn> bd <bd sn> bd8.  sn16 sn sn sn sn }
>>


% Refrain
<<
{	cymc8^"refrain" hh hh hh hh hh hh hh}
	\\
{	bd4 <bd sn>4. bd8 <bd sn>4}
>>
<<
{	hh8 hh hh hh hh hh hh hho}
	\\
{	bd4 <bd sn>4. bd8 <bd sn>4}
>>
<<
{	cymc8 hh hh hh hh hh hh hh}
	\\
{	bd4 <bd sn>4. bd8 <bd sn>4}
>>
<<
{	hh8 hh hh hh hh hh hh toml}
	\\
{	bd4 <bd sn>4. bd8 bd4}
>>
<<
{	cymc8 hh hh hh hh hh hh hh}
	\\
{	bd4 <bd sn>4. bd8 <bd sn>4}
>>
<<
{	hh8 hh hh hh hh hh hh hho}
	\\
{	bd4 <bd sn>4. bd8 <bd sn>4}
>>
<<
{	hh8 hh hh hh cymc hh hh hh}
	\\
{	bd4 <bd sn>4. bd8 <bd sn>4}
>>
<<
{	cymc8 hh hh hh s16 s s [sn16 sn tomh toml toml]}
	\\
{	bd4 <bd sn>4 bd bd}
>>






}
% fin du morceau 
>>


\layout {
  \context {
    \StaffGroup
    \override StaffGrouper #'staff-staff-spacing =
    #'((basic-distance . 20)
       (minimum-distance . 9)
       (padding . 4))
  }
} 


