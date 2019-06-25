%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version "2.19.3"

% La fonction et sa déclaration obligatoire avec les mots clefs «parser» et «location»
% la variable porte le nom de «isBarNumberVisibility» est est de type «boolean» (Oui/Non)
barNumberVisibility =
  #(define-music-function (parser location isBarNumberVisibility) (boolean?)
  ; La fonction IF prends trois arguments : le test, la réponse si OUI, la réponse si NON
    (if 
      ;le test
      isBarNumberVisibility
      ;la réponse OUI
      #{ \override Score.BarNumber.break-visibility = ##(#f #t #t) #}
      ;la réponse NON
      #{ \override Score.BarNumber.break-visibility = ##(#f #f #f) #}
      ;le fait d’encadrer le retour par «#{» et «#}» est pour renvoyer du code lilypond
    )
  )

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Essai d’usage, merci Pierre
{
  \barNumberVisibility ##t
  \repeat unfold 16 c'1
  \barNumberVisibility ##f
  \repeat unfold 16 c'1
  \barNumberVisibility ##t
  \repeat unfold 16 c'1
  \barNumberVisibility ##f
  \repeat unfold 16 c'1
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
