\version "2.18.2"
date = #(strftime "%d-%m-%Y" (localtime (current-time)))
%{
Impression d'une image sur la page de couverture dans la \Header,
 ici dans le paramètre "arranger" pour être après les titres.
 Mais le texte du transcripteur est imprimé à gauche au lieu de droite.
L'image doit être en format eps ou ps.
\epsfile définit le premier paramètre #X dimension en horizontal ou
                                       #Y dimension en vertical les deux génèren deux images.
        #95 : dimension
        #image.ps nom de l'image qui doit être dans le dossier de la pertition ou alors
 il faut définir tout le chemin ./image.ps
   %}

\header {
  Mytitleallpages =  "Ik zeg Adieu"
  title = \markup { \column { " " " " " " " "   \fontsize #6 \bold "Ik zeg Adieu " " " " "   } }
  subtitle = \markup { \column {\fontsize #6 \bold  "" " " " " } }
  composer = \markup { \column { \bold \center-column {"Anonyme ou Ludovicus Episcopus" " " }}}

  arranger = \markup { \column {\fill-line {\line {""} { "Transcription : Daniel Bernair"} }
             \fill-line {\line {\epsfile #X #95 #"image.ps"} } } }
  enteredby = "DB"
  tagline = \markup {  "Partition gravée avec LilyPond (http://lilypond.org)" }
}
\paper {
  #(set-paper-size "a4")
  top-margin = 1.0\cm
  bottom-margin = 1.0\cm
  %%%%%%%%left-margin = 1.0\cm
 %%%%%%%%%% right-margin = 1.0\cm
   two-sided = ##t
  inner-margin = 1.0\cm
  outer-margin = 1.5\cm
  binding-offset = 1\cm
 %%%%%%%%%%% page-count = #6
  system-system-spacing = #'((basic-distance . 20.0) (padding . 4.0))
  ragged-last-bottom = ##t
  ragged-bottom = ##t
   oddFooterMarkup = \markup {\fill-line {
       % \column { \fromproperty #'header:meter }
        \column { \fromproperty #'header:tagline }
        \column { \line {DB le \date }}
        } }

oddHeaderMarkup = \markup
\on-the-fly #not-first-page %%%%%%%%% ne pas imprimer sur la première page
%%%%%%%%% \fill-line {
%%%%%%%%%%%%%\fromproperty #'header:title % titre sur la page N° 1 (en haut à gauche)
\fill-line { \fromproperty #'header:Mytitleallpages % titre sur la page N° 1 (en haut à gauche)
\on-the-fly #print-page-number-check-first \fromproperty
#'page:page-number-string

}

evenHeaderMarkup = \markup
\fill-line {
\on-the-fly #print-page-number-check-first \fromproperty
#'page:page-number-string
" "
%%%%%%%%%%\fromproperty #'header:title % titre sur toutes les pages
\fromproperty #'header:Mytitleallpages % titre sur toutes les pages
}
}

\pageBreak
#(set-global-staff-size 17)

\layout {
  \context {
    \Score
    skipBars = ##t
    autoBeaming = ##f
     %%% \set Score.markFormatter = #format-mark-box-letters
   %%%%%%%%%%\override RehearsalMark #'self-alignment-X = #-1
   \override Score.RehearsalMark.self-alignment-X = #LEFT
  }
}
\pageBreak

\score {
   \relative c' {
   \key c\major
   c d e f g a b c
}
}
