







































% l'écriture des numéros de mesures
\include "../all/score_barnumber.ly"

% commender à la mesure 49
\set Score.currentBarNumber = #49

\time 3/4
\bar "|:"
	|<mi_0>2.
	|<re_1>2	<do_0>4
	|<la_1_2>2.(
	|<la_1_2>2.)
	|<re_1>2.
	|<re_1>2	<do_0>4
	|<mi_0>4	<do_0>2(
	|<do_0>2)	<sol_0>4
	|<la_1_2>4	<la_1_2>	<sol_0>
	|<la_1_2>4	<la_1_2>	<sol_0>
	|<fa'_1>4	<fa_1>	<re_1>	
	|<si_2>2	<sol_0>4
	|<la_1_2>4	<la_1_2>	<sol_0>
	|<fa_1>2	<mi_1_2>4			\set Score.repeatCommands = #'((volta "Ad lib."))
	|<re_1_3>4	<do_0>2(
	|<do_0>4)	r2			\set Score.repeatCommands = #'((volta #f) (volta "Coda") end-repeat)
	|<re_1_3>4	<do_0>2
	|<do_0>4	r	<sol'_0>
	|<do,_0>4	r2			\set Score.repeatCommands = #'((volta #f))
