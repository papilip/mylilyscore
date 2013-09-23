\version "2.12.3"

#(set-default-paper-size "a4")
#(set-global-staff-size 24 )

\header {
  title = ""
  subtitle = ""
  instrument = ""
  composer = ""
  poet = ""
}

global = {
  \key a \major
  \time 3/4
  \tempo 4=80    % (ça me semble un peu lent !)
}

trompette =   \relative c'' {
  a4 a r 
}

\score {
  \trompette
}
