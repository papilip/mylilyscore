\version "2.19.83"

#(begin
  (define    fingerings (make-hash-table 44))
  (hash-set! fingerings ",fad"  '(#t #t #t))
  (hash-set! fingerings ",solb" '(#t #t #t))
  (hash-set! fingerings ",sol"  '(#t #f #t))
  (hash-set! fingerings ",sold" '(#f #t #t))
  (hash-set! fingerings ",lab"  '(#f #t #t))
  (hash-set! fingerings ",la"   '(#t #t #f))
  (hash-set! fingerings ",lad"  '(#t #f #f))
  (hash-set! fingerings ",sib"  '(#t #f #f))
  (hash-set! fingerings ",si"   '(#f #t #f))
  (hash-set! fingerings "do"    '(#f #f #f))
  (hash-set! fingerings "dod"   '(#t #t #t))
  (hash-set! fingerings "reb"   '(#t #t #t))
  (hash-set! fingerings "re"    '(#t #f #t))
  (hash-set! fingerings "red"   '(#f #t #t))
  (hash-set! fingerings "mib"   '(#f #t #t))
  (hash-set! fingerings "mi"    '(#t #t #f))
  (hash-set! fingerings "fa"    '(#t #f #f))
  (hash-set! fingerings "fad"   '(#f #t #f))
  (hash-set! fingerings "solb"  '(#f #t #f))
  (hash-set! fingerings "sol"   '(#f #f #f))
  (hash-set! fingerings "sold"  '(#f #t #t))
  (hash-set! fingerings "lab"   '(#f #t #t))
  (hash-set! fingerings "la"    '(#t #t #f))
  (hash-set! fingerings "lad"   '(#t #f #f))
  (hash-set! fingerings "sib"   '(#t #f #f))
  (hash-set! fingerings "si"    '(#f #t #f))
  (hash-set! fingerings "do'"   '(#f #f #f))
  (hash-set! fingerings "dod'"  '(#t #t #f))
  (hash-set! fingerings "reb'"  '(#t #t #f))
  (hash-set! fingerings "re'"   '(#t #f #f))
  (hash-set! fingerings "red'"  '(#f #t #f))
  (hash-set! fingerings "mib'"  '(#f #t #f))
  (hash-set! fingerings "mi'"   '(#f #f #f))
  (hash-set! fingerings "fa'"   '(#t #f #f))
  (hash-set! fingerings "fad'"  '(#f #t #f))
  (hash-set! fingerings "solb'" '(#f #t #f))
  (hash-set! fingerings "sol'"  '(#f #f #f))
  (hash-set! fingerings "sold'" '(#f #t #t))
  (hash-set! fingerings "lab'"  '(#f #t #t))
  (hash-set! fingerings "la'"   '(#t #t #f))
  (hash-set! fingerings "lad'"  '(#t #f #f))
  (hash-set! fingerings "sib'"  '(#t #f #f))
  (hash-set! fingerings "si'"   '(#f #t #f))
  (hash-set! fingerings "do''"  '(#f #f #f))


  ;;;===================================================================================================================
  ;;;   \markup \brass_finger note
  ;;;   Affiche le doigté verticale de la trompette (ou instrument en cuivre)
  ;;;===================================================================================================================
  (define-markup-command (brass_finger layout props note) (markup?)
    #:properties (
      (radius     0.7)
      (thickness  0.1)
      (skip       1.0)
    )

    "Affiche le doité pour une tompette en fonction de la note donnée"

    (interpret-markup layout props
      (markup
        #:line
        (#:raise 2.3
          (#:override
            (cons (quote baseline-skip) skip)
            (#:column
              (#:draw-circle radius thickness (list-ref (hash-get-handle fingerings note) 1)
               #:draw-circle radius thickness (list-ref (hash-get-handle fingerings note) 2)
               #:draw-circle radius thickness (list-ref (hash-get-handle fingerings note) 3)
              )
            )
          )
        )
      )
    )
  )


  ;;;===================================================================================================================
  ;;;   \markup \brass_fingerh note
  ;;;   Affiche le doigté horizontal de la trompette (ou instrument en cuivre)
  ;;;===================================================================================================================
  (define-markup-command (brass_fingerh layout props note) (markup?)
    #:properties (
      (radius     0.7)
      (thickness  0.1)
      (vspace     1.0)
    )

    "Affiche le doité horizontal pour une tompette en fonction de la note donnée"

    (interpret-markup layout props
      (markup
        #:line
        (#:concat
          (#:raise vspace
            (#:draw-circle radius thickness (list-ref (hash-get-handle fingerings note) 1))
          #:raise vspace
            (#:draw-circle radius thickness (list-ref (hash-get-handle fingerings note) 2))
          #:raise vspace
            (#:draw-circle radius thickness (list-ref (hash-get-handle fingerings note) 3))
          )
        )
      )
    )
  )

)
