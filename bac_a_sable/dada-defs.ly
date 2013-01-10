\version "2.11.40"
\include "orchestrallily.ly"

% \paper { line-width=10\cm }
% #(set-global-staff-size 14)

\header { title = "A nonsensical work" }

DadaPieceName = "Dada song"
DadaPieceNameTacet = "Dada song - Tacet"

VcInstrumentName = "Violoncello"
VcShortInstrumentName = "Vc."
SSoloInstrumentName = "Soprano Solo"
SSoloShortInstrumentName = "S."

VcClef = \clef "bass"
DadaSettings = {\mark\markup{\italic "Slow."}}

DadaVcMusic = \relative c { c4 g' c, b' }
DadaSSoloMusic = \relative c'' {c2 c,8 e g c}
DadaSSoloLyrics = \lyricmode { Da, da -- da -- da -- da! }


\orchestralScoreStructure #'(
  ("FullScore" ParallelMusic ("Percussion" "SSolo" "Vc"))
  ("InvertedScore" StaffGroup ("Vc" "SSolo" "Percussion"))
)
