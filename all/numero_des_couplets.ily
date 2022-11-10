\version "2.22.2"

#(define (add-grob-definition grob-name grob-entry)
   (set! all-grob-descriptions
         (cons ((@@ (lily) completize-grob-entry)
                (cons grob-name grob-entry))
               all-grob-descriptions)))

#(add-grob-definition
  'StanzaNumberSpanner
  `((direction . ,LEFT)
    (font-series . bold)
    (padding . 1.0)
    (side-axis . ,X)
    (stencil . ,ly:text-interface::print)
    (X-offset . ,ly:side-position-interface::x-aligned-side)
    (Y-extent . ,grob::always-Y-extent-from-stencil)
    (meta . ((class . Spanner)
             (interfaces . (font-interface
                            side-position-interface
                            stanza-number-interface
                            text-interface))))))

\layout {
  \context {
    \Global
    \grobdescriptions #all-grob-descriptions
  }
  \context {
    \Score
    \remove Stanza_number_align_engraver
    \consists
      #(lambda (context)
         (let ((texts '())
               (syllables '()))
           (make-engraver
            (acknowledgers
             ((stanza-number-interface engraver grob source-engraver)
                (set! texts (cons grob texts)))
             ((lyric-syllable-interface engraver grob source-engraver)
                (set! syllables (cons grob syllables))))
            ((stop-translation-timestep engraver)
               (for-each
                (lambda (text)
                  (for-each
                   (lambda (syllable)
                     (ly:pointer-group-interface::add-grob text 'side-support-elements syllable))
                   syllables))
                texts)
               (set! syllables '())))))
  }
  \context {
    \Lyrics
    \remove Stanza_number_engraver
    \consists
      #(lambda (context)
         (let ((text #f))
           (make-engraver
            ((process-music engraver)
               (if (not text)
                   (let ((stanza (ly:context-property context 'stanza #f)))
                     (if stanza
                         (begin
                           (set! text (ly:engraver-make-grob engraver 'StanzaNumberSpanner '()))
                           (let ((column (ly:context-property context 'currentCommandColumn)))
                             (ly:grob-set-property! text 'text stanza)
                             (ly:spanner-set-bound! text LEFT column)))))))
            ((finalize engraver)
               (if text
                   (let ((column (ly:context-property context 'currentCommandColumn)))
                     (ly:spanner-set-bound! text RIGHT column)))))))
    \override StanzaNumberSpanner.horizon-padding = 10000
    % \override LyricText.font-shape = #'italic
  }
}
