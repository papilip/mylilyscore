







































% l'écriture des numéros de mesures
\include "../all/score_barnumber.ly"

% commender à la mesure 49
\set Score.currentBarNumber = #49

\time 3/4
\repeat volta 2 {
	|<mi-0>2.
	|<re-1>2	<do-0>4
	|<la-12>2.(
	|<la-12>2.)
	|<re-1>2.
	|<re-1>2	<do-0>4
	|<mi-0>4	<do-0>2(
	|<do-0>2)	<sol-0>4
	|<la-12>4	<la-12>	<sol-0>
	|<la-12>4	<la-12>	<sol-0>
	|<fa'-1>4	<fa-1>	<re-1>	
	|<si-2>2	<sol-0>4
	|<la-12>4	<la-12>	<sol-0>
	|<fa-1>2	<mi-12>4
}
\alternative {
	{
		|<re-13>4	<do-0>2(
		|<do-0>4)	r2
	}
	{
		|<re-13>4	<do-0>2
		|<do-0>4	r	<sol'-0>
		|<do,-0>4	r2
	}
}
