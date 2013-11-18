\version                "2.17.26"
\language               "italiano"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Main droite
musicMAINdroite = \relative do' {
        |fa4    mi      re8     do~     do4
        |mi2.   re4
        |do1
        |do'2.  la4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Main droite
musicMAINgauche = \relative do {
        \clef   bass
        |<la    fa'     do'>2   <fa     fa'     la>2
        |<sol   fa'     si>2    r
        |<la    mi'     do'>2   sol2
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
        \score {
                \new PianoStaff
                <<
                        \new Staff      { \musicMAINdroite }
                        \new Staff      { \musicMAINgauche }
                >>
        }
}
