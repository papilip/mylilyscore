\version "2.10.33"

\header {
  title = "Coordination en croches"
        }

\paper { ragged-last = ##f
        }


\score {

  <<
        \new DrumStaff

    \context DrumVoice << \drummode {
        \stemDown
  #(override-auto-beam-setting '(end * * 4 4) 3 4 'Score)
        #(override-auto-beam-setting '(end * * 4 4) 1 4 'Score)
        % Les deux lignes prÃ©cÃ©dentes permettent de
        % grouper les croches par deux au lieu de
        % quatre dans la configuration par dÃ©faut.

        \bar"|:" \repeat volta 2 \repeat unfold 2 { bd8 sn^"G" sn^"D" sn^"G"}
                         \repeat volta 2 \repeat unfold 2 {sn^"D" bd sn^"D" sn^"G" } \break
                         \repeat volta 2 \repeat unfold 2 {sn^"D" sn^"G" bd sn^"G" }
                         \repeat volta 2 \repeat unfold 2 {sn^"D" sn^"G" sn^"D" bd} \break                    
                         \repeat volta 2 \repeat unfold 2 { bd8 sn^"G" sn4^"D" }
                         \repeat volta 2 \repeat unfold 2 {sn8^"D" bd r  sn^"G" } \break
                         \repeat volta 2 \repeat unfold 2 {sn^"D" sn^"G" bd4  }
                          \repeat volta 2 \repeat unfold 2 {r8 sn^"G" sn^"D" bd}\break  } >>
  >>

        \header { piece = "Nr. 1 " }

        }


\score {
  <<
    \context DrumVoice << \drummode {
        \stemDown
    \bar"|:"   \repeat volta 2 \repeat unfold 2 {bd8 bd sn^"D" sn^"G" }
                          \repeat volta 2 \repeat unfold 2 {sn^"D" sn^"G" bd bd} \break
                          \repeat volta 2 \repeat unfold 2 {bd  sn^"G" sn^"D" bd }
                         \repeat volta 2 \repeat unfold 2 {sn^"D" bd bd sn^"G"} \break  } >>
  >>

        \header { piece = "Nr. 2 " }

        }

\score {
  <<
        \context DrumVoice << \drummode {
        \stemDown  
       \bar"|:"     \repeat volta 2  {bd bd sn^"D" sn^"G" sn^"D" sn^"D" sn^"G" sn^"G"}
                          \repeat volta 2  {sn^"D" sn^"G" bd bd sn^"D" sn^"D" sn^"G" sn^"G" } \break
                          \repeat volta 2  {sn^"D" sn^"D" sn^"G" sn^"G" bd bd sn^"D" sn^"G"}
                          \repeat volta 2  {sn^"D" sn^"D" sn^"G" sn^"G" sn^"D" sn^"G" bd bd} \break }  >>
  >>

        \header { piece = "Nr. 3 " }

        }
\score {
  <<
        \context DrumVoice << \drummode {
        \stemDown  
       \bar"|:" \repeat volta 2  {bd  sn^"G" sn^"D" bd sn^"D" bd bd sn^"G"}
                         \repeat volta 2 {sn^"D" bd bd sn^"G" bd  sn^"G" sn^"D" bd} \break     }  >>
  >>

        \header { piece = "Nr. 4 " }

        }
