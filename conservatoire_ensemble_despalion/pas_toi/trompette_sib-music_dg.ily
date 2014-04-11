\version "2.19.3"

\relative c'' {
	\barNumberVisibility ##f
	<>^\markup { \with-color #blue \box \titre }
	<< { b2.	a4 }	\\ { g2.--	fis4-- }	>>				| %030
	\barNumberVisibility ##t
	<< { b2.	b4 }	\\ { g2.--	g4-- }		>>				| %031
	<< { c2.	b4 }	\\ { g2.--	g4-- }		>>				| %032
	<< { d'2.	c4 }	\\ { g2.--	g4-- }		>>				| %033
	<< { b2.	a4 }	\\ { g2.--	fis4-- }	>>				| %034
	<< { b2.	b4 }	\\ { g2.--	g4-- }		>>				| %035
	<< { c2.	c4 }	\\ { g2.--	g4-- }		>>				| %036
	<< { b2.	a4 }	\\ { g2.--	fis4-- }	>>				| %037
	<< { b2.	b4 }	\\ { g2.--	g4-- }		>>				| %038
	<< { c2.	b4 }	\\ { g2.--	g4-- }		>>				| %039
	<< { c2.	c4 }	\\ { g2.--	g4-- }		>>			\bar"||"| %040
}
