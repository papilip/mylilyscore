\version "2.11.41"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% OrchestralLily
% ==============
% Desciption:  Lilypond package to make writing large orchestral scores easier.
% Documentation: http://wiki.kainhofer.com/lilypond/orchestrallily
% Version: 0.02, 2008-03-06
% Author: Reinhold Kainhofer, reinhold@kainhofer.com
% Copyright: (C) 2008 by Reinhold Kainhofer
% License: GPL v3.0, http://www.gnu.org/licenses/gpl.html
%
% Version History:
% 0.01: Initial Version
% 0.02: Added basic MIDI support (*MidiInstrument and \setCreateMIDI)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(use-modules (ice-9 match))


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%   SCORE STRUCTURE AND AUTOMATIC GENERATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Helper functions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Helper function to filter all non-null entries
#(define (not-null? x) (not (null? x)))

% Helper function to extract a given variable, built from [Piece][Instrument]Identifier
#(define (namedPieceInstrObject piece instr name)
  (let* (
         (fullname  (string->symbol (string-append piece instr name)))
         (instrname (string->symbol (string-append instr name)))
         (piecename (string->symbol (string-append piece name)))
        )
    (cond
      ((defined? fullname) (primitive-eval fullname))
      ((defined? instrname) (primitive-eval instrname))
      ((defined? piecename) (primitive-eval piecename))
      (else '())
    )
  )
)

%% Print text as a justified paragraph, taken from the lilypond Notation Reference
#(define-markup-list-command (paragraph layout props args) (markup-list?)
   (let ((indent (chain-assoc-get 'par-indent props 2)))
     (interpret-markup-list layout props
       (make-justified-lines-markup-list (cons (make-hspace-markup indent)
                                               args)))))

conditionalBreak = #(define-music-function (parser location) ()
   #{ \tag #'instrumental-score \pageBreak #}
)

#(define (oly:piece-title-markup title) (markup #:column (#:line (#:fontsize #'3 #:bold title))) )

#(define-markup-command (piece-title layout props title) (markup?)
;      (toc-item title)
     (interpret-markup layout props (oly:piece-title-markup title))
)

#(define (oly:generate_object_name piece instr obj )
  (if (and (string? piece) (string? instr) (string? obj))
    (string-append piece instr obj)
    #f
  )
)
#(define (oly:generate_staff_name piece instr) (oly:generate_object_name piece instr "St"))

#(define (set-context-property context property value)
  (set! (ly:music-property context property) value)
)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Score structure
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define oly:orchestral_score_structure '())

#(define (oly:set_score_structure struct)
  (if (list? struct)
    (set! oly:orchestral_score_structure struct)
    (ly:warning (_ "oly:set_score_structure needs an association list as argument!"))
  )
)

orchestralScoreStructure = #(define-music-function (parser location structure) (list?) 
  (oly:set_score_structure structure)
  (make-music 'Music 'void #t)
)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Automatic staff and group generation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Retrieve all music definitions for the given 
#(define (oly:get_music_objects piece name instruments)
  (filter not-null? (map (lambda (i) (namedPieceInstrObject piece i "Music")) instruments))
)

#(define (oly:make_staff_internal piece name music)
  (let* (
         (tempo    (namedPieceInstrObject piece name "Tempo"))
         (lyrics   (namedPieceInstrObject piece name "Lyrics"))
         (musiccontent '())
        )
    ;(ly:message "Music in make_staff_internal (piece=~S, name=~S)" piece name)
    
    (if (ly:music? lyrics)
      (set! musiccontent (append musiccontent (list dynamicUp)))
      (if (not-null? lyrics) (ly:warning (_ "Wrong type (no lyrics) for lyrics for instrument ~S in piece ~S") name piece))
    )
    ; Append the settings, key and clef (if defined)
    (map 
      (lambda (type) 
        (let* ((object (namedPieceInstrObject piece name type)))
          (if (ly:music? object)
            (set! musiccontent (append musiccontent (list object)))
            (if (not-null? object) (ly:warning (_ "Wrong type (no ly:music) for ~S for instrument ~S in piece ~S") type name piece))
          )
        )
      )
      '("Settings" "Key" "Clef")
    )

    (if (ly:music? music)
      (begin
        (set! musiccontent (append musiccontent (list music)))
        ;(ly:message "Generating staff for ~a" name)
        
        (let* (
               (voicename  (oly:generate_object_name piece name "Voice" ))
               (staffname  (oly:generate_staff_name piece name))
               (voice      (context-spec-music (make-simultaneous-music musiccontent) 'Voice voicename))
               (staff      '())
               (staffcont  (list voice))
               (propops    (oly:make_staff_properties piece name))
              )
          ; If we have lyrics, create a lyrics context containing LyricCombineMusic 
          ; and add that as second element to the staff's elements list...
          (if (ly:music? lyrics)
            (let* (
                   (lyricsname (oly:generate_object_name piece name "Lyrics" ))
                   (lyricscont (make-music 'LyricCombineMusic 'element lyrics 'associated-context voicename))
                  )
              (set! staffcont (append staffcont 
                (list (context-spec-music lyricscont 'Lyrics lyricsname))))
            )
          )
          (set! staff (context-spec-music (make-simultaneous-music staffcont) 'Staff staffname))
          (if (not-null? propops) 
            (set! (ly:music-property staff 'property-operations) propops)
          )
          staff
        )
      )
      ; For empty music, return empty 
      '()
    )
  )
)
  
% TODO: Implement one-staff with multiple voices (\voiceOne and \voiceTwo), 
%       possibly with lyrics attached
#(define (oly:make_multi_voice_staff parser piece instr voices)
  (ly:message "Generating a staff with multiple voices is not yet implemented, using 'SimultaneousMusic instead. Staff ID: ~a, voices: ~a" instr voices)
  (oly:make_parallel_staves parser piece instr voices)
)

#(define (oly:make_staff parser piece instr)
  (let* ( (music (namedPieceInstrObject piece instr "Music")) )
    ;(ly:message "make_staff: ~S ~S" piece instr)
    (if (not-null? music)
      (oly:make_staff_internal piece instr music)
      '()
    )
  )
)
  
#(define (oly:make_parallel_staves parser piece instr instruments) 
  (let* (
         (staves (map (lambda (i) (oly:create_staff_or_group parser piece i)) instruments))
         (nonemptystaves (filter not-null? staves))
        )
    (if (not-null? nonemptystaves)
      (make-simultaneous-music nonemptystaves)
      '()
    )
  )
)

#(define (oly:make_part_combined_staff parser piece instr instruments) 
  (let* ((music (oly:get_music_objects piece instr instruments)))
     ;(ly:message "make_part_combined_staff: ~S ~S ~a" piece instr instruments) 
     (cond
       ((and (pair? music) (ly:music? (car music)) (not-null? (cdr music)) (ly:music? (cadr music)))
           ;(ly:message "Part-combine with two music expressions")
           (oly:make_staff_internal piece instr (make-part-combine-music parser music)))
      ((null? music) 
           ;(ly:message "Part-combine without any music expressions")
           '())
      ; exactly one is a music expression, simply use that by joining 
      ((list? music) 
           ;(ly:message "Part-combine with only one music expressions")
           (oly:make_staff_internal piece instr (apply append music)))
      (else 
          ;(ly:message "make_part_combined_staff: ~S ~S ~a" piece instr instruments) 
          '() )
    )
  )
)

#(define (oly:create_staff_or_group parser piece instr)
  (let* ( (staff (namedPieceInstrObject piece instr "Staff")) )
    ;(if (not-null? staff)
    ;  (ly:message "Found staff variable for instrument ~a in piece ~a"  instr piece)
    ;  (ly:message "Staff variable for instrument ~a in piece ~a NOT FOUND"  instr piece)
    ;)
    (if (not-null? staff)
      ; Explicit staff variable, use that
      staff
      ; no staff defined => check hierarchy definition and match a possible entry 
      ; against the four allowed forms
      (match (assoc-ref oly:orchestral_score_structure instr)
          ; type (ParallelMusic|SimultaneousMusic ("sub" "instruments"...))
          ; generate << ... >>
          ( ((or 'ParallelMusic 'SimultaneousMusic) (? list? subinstr))
                  (oly:make_parallel_staves parser piece instr subinstr) )

          ; type (StaffGroupType ("sub" "instruments"...)), generate staff group
          ( ((? symbol? stafftype) (? list? subinstr))
                  (oly:make_staff_group parser piece instr stafftype subinstr) )

          ; type (#t ("sub" "instruments")) => part-combined staff
          ( (#t ((? string? instone) (? string? insttwo)))
                  (oly:make_part_combined_staff parser piece instr (list instone insttwo)) )

          ; type (#f ("sub" "instruments")) => staff with multiple voices
          ( (#f (? list? subinstr))
                  (oly:make_multi_voice_staff parser piece instr subinstr) )

          ; not found in score history -> simple staff
          ( #f
                  (oly:make_staff parser piece instr) )
                      
          ; Any other type is invalid, treat it like a simple staff!
          ( invalidform
              (ly:warning (_ "Encountered illegal entry ~S in score structure for instrument ~a") invalidform instr)
              (ly:warning (_ "Trying to interpret ~S as a simple instrument") instr)
              (oly:make_staff parser piece instr) )
      )
    )
  )
)

% Given a property name and the extensions, either generate the pair to set 
% the property or an empty list, if no pre-defined variable could be found
#(define (oly:generate_property_pair prop piece instr type)
  (let* ((val (namedPieceInstrObject piece instr type)))
    (if (not-null? val) (list 'assign prop val) '() )
  )
)
% Generate the properties for the staff for piece and instr. Typically, these
% are the instrument name and the short instrument name (if defined).
% return a (possibly empty) list of all assignments.
#(define (oly:make_staff_properties piece instr)
  (let* (
         (mapping '( 
              (instrumentName . "InstrumentName") 
              (shortInstrumentName . "ShortInstrumentName")
              (midiInstrument . "MidiInstrument")
            ))
         (assignments (map 
             (lambda (pr) 
                 (oly:generate_property_pair (car pr) piece instr (cdr pr))
             )
             mapping))
         (props (filter not-null? assignments))
        )
    (display props)
    props
  )
)

#(define (oly:make_staff_group parser piece instr stafftype instruments)
  (let* (
         (staves     (oly:make_parallel_staves parser piece instr instruments))
        )
    (if (not-null? staves)
      (let* (
             (staffname (oly:generate_staff_name piece instr))
             (group     (context-spec-music staves stafftype staffname))
             (propops   (oly:make_staff_properties piece instr))
            )
        (set! (ly:music-property group 'property-operations) propops)
        group
      )
      ; Return empty list if no staves are generated
      '()
    )
  )
)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Automatic score generation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% \setUserBook ##t/##f sets a flat to determine whether the calls to createScore
% are from within a book block or not
#(define oly:score_handler collect-scores-for-book)
setUseBook = #(define-music-function (parser location usebook) (boolean?) 
  (if usebook
    (set! oly:score_handler book-score-handler)
    (set! oly:score_handler toplevel-score-handler)
  )
  (make-music 'Music 'void #t)
)


% Two functions to handle midi-blocks: Either don't set one, or set an empty 
% one so that MIDI is generated
#(define (oly:set_no_midi_block score) '())
#(define (oly:set_midi_block score) 
  (let* ((midiblock (if (defined? '$defaultmidi) 
                        (ly:output-def-clone $defaultmidi) 
                        (ly:make-output-def))))
    (ly:output-def-set-variable! midiblock 'is-midi #t)
    (ly:score-add-output-def! score midiblock)
  )
)

% \setCreateMidi ##t/##f sets a flag to determine wheter MIDI output should
% be generated
#(define oly:apply_score_midi oly:set_no_midi_block)
setCreateMIDI = #(define-music-function (parser location createmidi) (boolean?)
  (if createmidi
    (set! oly:apply_score_midi oly:set_midi_block)
    (set! oly:apply_score_midi oly:set_no_midi_block)
  )
  (make-music 'Music 'void #t)
)


% Two functions to handle layout-blocks: Either don't set one, or set an empty 
% one so that a PDF is generated
#(define (oly:set_no_layout_block score) '())
#(define (oly:set_layout_block score) 
  (let* ((layoutblock (if (defined? '$defaultlayout) 
                        (ly:output-def-clone $defaultlayout) 
                        (ly:make-output-def))))
    (ly:output-def-set-variable! layoutblock 'is-layout #t)
    (ly:score-add-output-def! score layoutblock)
  )
)

% \setCreatePDF ##t/##f sets a flag to determine wheter PDF output should
% be generated
#(define oly:apply_score_layout oly:set_no_layout_block)
setCreatePDF = #(define-music-function (parser location createlayout) (boolean?)
  (if createlayout
    (set! oly:apply_score_layout oly:set_layout_block)
    (set! oly:apply_score_layout oly:set_no_layout_block)
  )
  (make-music 'Music 'void #t)
)


% Set the piece title in a new header block.
#(define (oly:set_piece_header score piecename)
  (if (not-null? piecename)
    (let* ((header (make-module)))
      (module-define! header 'piece piecename)
      (ly:score-set-header! score header)
    )
    ;#f
  )
)


% post-filter functions. By default, no filtering is done. However,
% for the *NoCues* function, the cue notes should be killed
identity = #(define-music-function (parser location music) (ly:music?) music)
cuefilter = #(define-music-function (parser location music) (ly:music?)
  ((ly:music-function-extract removeWithTag) parser location 'cued ((ly:music-function-extract killCues) parser location music))
)

% The helper function to build a score.
#(define (oly:createScoreHelper parser location part instr func)
  (let* (
         (staves    (oly:make_parallel_staves parser part "topLevel" instr))
         (music     (if (not-null? staves) 
                        ((ly:music-function-extract func) parser location staves)
                        '()
                    ))
         (score     '())
         (piecename (namedPieceInstrObject part (car instr) "PieceName"))
         (piecenametacet (namedPieceInstrObject part (car instr) "PieceNameTacet"))
         (header    '())
         )
    (if (null? music)
      ; No staves, print tacet
      (begin 
        (if (not-null? piecenametacet) (set! piecename piecenametacet))
        (if (not-null? piecename)
          (collect-scores-for-book parser (list (oly:piece-title-markup piecename)))
          (ly:warning (_ "No music and no score title found for part ~a and instrument ~a") part instr)
        )
      )
      ; we have staves, apply the piecename to the score and add layout/midi blocks if needed
      (begin
        (set! score (scorify-music music parser))
        (oly:set_piece_header score piecename)
        (oly:apply_score_midi score)
        (oly:apply_score_layout score)
        ; Schedule the score for typesetting
        (collect-scores-for-book parser score)
      )
    )
  )
  ; This is a void function, the score has been schedulled for typesetting already
  (make-music 'Music 'void #t)
)

createScore = #(define-music-function (parser location piece instr) (string? list?)
  (oly:createScoreHelper parser location piece instr identity)
)
createNoCuesScore = #(define-music-function (parser location piece instr) (string? list?)
  (oly:createScoreHelper parser location piece instr cuefilter)
)





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%   CUE NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% set the cue instrument name
setCue = #(define-music-function (parser location instr) (string?)
   #{ \set Voice.instrumentCueName = $instr #} )

% generate a cue music section with instrument names
% Parameters: \namedCueDuring NameOfQuote CueDirection CueInstrument OriginalInstrument music
%                 -) NameOfQuote CueDirection music are the parameters for \cueDuring
%                 -) CueInstrument and OriginalInstrument are the displayed instrument names
% typical call:
% \namedCueDuring #"vIQuote" #UP #"V.I" #"Sop." { R1*3 }
%      This adds the notes from vIQuote (defined via \addQuote) to three measures, prints "V.I" at
%      the beginning of the cue notes and "Sop." at the end
namedCueDuring = #(define-music-function (parser location cuevoice direction instrcue instr cuemusic) (string? number? string? string? ly:music?)
   #{
     \cueDuring #$cuevoice #$direction { \tag #'cued \setCue #$instrcue $cuemusic \tag #'cued \setCue #$instr }
%      \tag #'uncued $cuemusic
   #}
)
namedTransposedCueDuring = #(define-music-function (parser location cuevoice direction instrcue instr trans cuemusic) (string? number? string? string? ly:music? ly:music?)
   #{
     \transposedCueDuring #$cuevoice #$direction $trans { \tag #'cued \setCue #$instrcue $cuemusic \tag #'cued \setCue #$instr }
%      \tag #'uncued $cuemusic
   #}
)

% set the cue instrument name and clef
setClefCue = #(define-music-function (parser location instr clef) 
                                                     (string? ly:music?)
   #{
     \once \override Staff.Clef #'font-size = #-3 $clef
     \set Voice.instrumentCueName = $instr
   #} )

% generate a cue music section with instrument names and clef changes
% Parameters: \cleffedCueDuring NameOfQuote CueDirection CueInstrument CueClef OriginalInstrument OriginalClef music
%                 -) NameOfQuote CueDirection music are the parameters for \cueDuring
%                 -) CueInstrument and OriginalInstrument are the displayed instrument names
%                 -) CueClef and OriginalClef are the clefs for the the cue notes and the clef of the containing voice
% typical call:
% \cleffedCueDuring #"vIQuote" #UP #"V.I" #"treble" #"Basso" #"bass" { R1*3 }
%      This adds the notes from vIQuote (defined via \addQuote) to three measures, prints "V.I" at
%      the beginning of the cue notes and "Basso" at the end. The clef is changed to treble at the 
%      beginning of the cue notes and reset to bass at the end
cleffedCueDuring = #(define-music-function (parser location cuevoice direction instrcue clefcue instr clefinstr cuemusic) 
                                                        (string? number? string? ly:music? string? ly:music? ly:music?)
   #{
     \cueDuring #$cuevoice #$direction { \tag #'cued \setClefCue #$instrcue $clefcue $cuemusic \tag #'cued \setClefCue #$instr $clefinstr }
%      \tag #'uncued $cuemusic
   #}
)




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%   DYNAMICS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tempoMark = #(define-music-function (parser location padding marktext) (number? string?)
#{
  \once \override Score . RehearsalMark #'padding = $padding
  \mark \markup { \bold \smaller $marktext }
#})

shiftDynamics = #(define-music-function (parser location xshift yshift) (number? number?)
#{
  \once \override DynamicTextSpanner #'padding = $yshift
  \once\override DynamicText #'extra-offset = #(cons $xshift $yshift)
#})

ffz = #(make-dynamic-script "ffz")
pf = #(make-dynamic-script "pf")
sempp = #(make-dynamic-script (markup #:line( #:with-dimensions '(0 . 0) 
'(0 . 0) #:right-align #:normal-text #:italic "sempre" #:dynamic "pp")))
parenf = #(make-dynamic-script (markup #:line(#:normal-text #:italic #:fontsize 2 "(" #:dynamic "f" #:normal-text #:italic #:fontsize 2 ")" )))
parenp = #(make-dynamic-script (markup #:line(#:normal-text #:italic #:fontsize 2 "(" #:dynamic "p" #:normal-text #:italic #:fontsize 2 ")" )))



dim = #(make-span-event 'DecrescendoEvent START)
enddim = #(make-span-event 'DecrescendoEvent STOP)
decresc = #(make-span-event 'DecrescendoEvent START)
enddecresc = #(make-span-event 'DecrescendoEvent STOP)
cresc = #(make-span-event 'CrescendoEvent START)
endcresc = #(make-span-event 'CrescendoEvent STOP)

setCresc = {
    \set crescendoText = \markup { \italic "cresc." }
    \set crescendoSpanner = #'dashed-line
}
setDecresc = {
    \set decrescendoText = \markup { \italic "decresc." }
    \set decrescendoSpanner = #'dashed-line
}
setDim = {
    \set decrescendoText = \markup { \italic "dim." }
    \set decrescendoSpanner = #'dashed-line
}

newOrOldClef = #(define-music-function (parser location new old ) (string? string?)
    (if (ly:get-option 'old-clefs) #{ \clef $old #} #{ \clef $new #}) 
)



%%% Thanks to "Gilles THIBAULT" <gilles.thibault@free.fr>, there is a way
%   to remove also the fermata from R1-\fermataMarkup: By filtering the music
%   and removing the corresponding events.
%   Documented as an LSR snippet: http://lsr.dsi.unimi.it/LSR/Item?id=372
#(define (filterOneEventsMarkup event)
( let ( (eventname (ly:music-property  event 'name)) )
 (not
  (or     ;; add here event name you do NOT want
   (eq? eventname 'MultiMeasureTextEvent)
   (eq? eventname 'AbsoluteDynamicEvent)
   (eq? eventname 'TextScriptEvent)
   (eq? eventname 'ArticulationEvent)
   (eq? eventname 'CrescendoEvent)
   (eq? eventname 'DecrescendoEvent)
  )
 )
))

filterArticulations = #(define-music-function (parser location music) (ly:music?)
   (music-filter filterOneEventsMarkup music)
)











%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%   REST COMBINATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%% REST COMBINING, TAKEN FROM http://lsr.dsi.unimi.it/LSR/Item?id=336
%%
%% Usage:
%%   \new Staff \with {
%%     \override RestCollision #'positioning-done = #merge-rests-on-positioning
%%   } << \somevoice \\ \othervoice >>
%% or (globally):
%%   \layout {
%%     \context {
%%       \Staff
%%       \override RestCollision #'positioning-done = #merge-rests-on-positioning
%%     }
%%   } 
%%
%% Limitations:
%% - only handles two voices
%% - does not handle multi-measure/whole-measure rests

#(define (rest-score r)
  (let ((score 0)
  (yoff (ly:grob-property-data r 'Y-offset))
  (sp (ly:grob-property-data r 'staff-position)))
    (if (number? yoff)
  (set! score (+ score 2))
  (if (eq? yoff 'calculation-in-progress)
      (set! score (- score 3))))
    (and (number? sp)
   (<= 0 2 sp)
   (set! score (+ score 2))
   (set! score (- score (abs (- 1 sp)))))
    score))

#(define (merge-rests-on-positioning grob)
  (let* ((can-merge #f)
   (elts (ly:grob-object grob 'elements))
   (num-elts (and (ly:grob-array? elts)
      (ly:grob-array-length elts)))
   (two-voice? (= num-elts 2)))
    (if two-voice?
  (let* ((v1-grob (ly:grob-array-ref elts 0))
         (v2-grob (ly:grob-array-ref elts 1))
         (v1-rest (ly:grob-object v1-grob 'rest))
         (v2-rest (ly:grob-object v2-grob 'rest)))
    (and
     (ly:grob? v1-rest)
     (ly:grob? v2-rest)          
     (let* ((v1-duration-log (ly:grob-property v1-rest 'duration-log))
      (v2-duration-log (ly:grob-property v2-rest 'duration-log))
      (v1-dot (ly:grob-object v1-rest 'dot))
      (v2-dot (ly:grob-object v2-rest 'dot))
      (v1-dot-count (and (ly:grob? v1-dot)
             (ly:grob-property v1-dot 'dot-count -1)))
      (v2-dot-count (and (ly:grob? v2-dot)
             (ly:grob-property v2-dot 'dot-count -1))))
       (set! can-merge
       (and 
        (number? v1-duration-log)
        (number? v2-duration-log)
        (= v1-duration-log v2-duration-log)
        (eq? v1-dot-count v2-dot-count)))
       (if can-merge
     ;; keep the rest that looks best:
     (let* ((keep-v1? (>= (rest-score v1-rest)
              (rest-score v2-rest)))
      (rest-to-keep (if keep-v1? v1-rest v2-rest))
      (dot-to-kill (if keep-v1? v2-dot v1-dot)))
       ;; uncomment if you're curious of which rest was chosen:
       ;;(ly:grob-set-property! v1-rest 'color green)
       ;;(ly:grob-set-property! v2-rest 'color blue)
       (ly:grob-suicide! (if keep-v1? v2-rest v1-rest))
       (if (ly:grob? dot-to-kill)
           (ly:grob-suicide! dot-to-kill))
       (ly:grob-set-property! rest-to-keep 'direction 0)
       (ly:rest::y-offset-callback rest-to-keep)))))))
    (if can-merge
  #t
  (ly:rest-collision::calc-positioning-done grob))))








%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%   TITLE PAGE / HEADER
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


  \paper {
    scoreTitleMarkup = \markup \piece-title \fromproperty #'header:piece
    bookTitleMarkup = \markup {
      \override #'(baseline-skip . 3.5)
      \column {
        \override #'(baseline-skip . 3.5)
        \column {
          \huge \bigger \bold
          \fill-line {
            \bigger \fromproperty #'header:title
          }
          \fill-line {
            \large \smaller \bold
            \bigger \fromproperty #'header:subtitle
          }
          \fill-line {
            \smaller \bold
            \fromproperty #'header:subsubtitle
          }
          \fill-line {
            { \large \bold \fromproperty #'header:instrument }
          }
          \fill-line {
            \fromproperty #'header:poet
            \fromproperty #'header:composer
          }
          \fill-line {
            \fromproperty #'header:meter
            \fromproperty #'header:arranger
          }
        }
      }
    }
}






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%   SCORE (HEADER / LAYOUT) SETTINGS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\paper {
  left-margin = 2\cm
  right-margin = 2\cm
  line-width = 17\cm
%   after-title-space = 0.5\cm
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}
\layout {
  \context {
      \ChoirStaff 
      % If only one non-empty staff in a system exists, still print the backet
      \override SystemStartBracket #'collapse-height = #1
  }
  \context {
      \StaffGroup
      % If only one non-empty staff in a system exists, still print the backet
      \override SystemStartBracket #'collapse-height = #1
  }
  \context {
      \Score
      % Force multi-measure rests to be written as one span
      \override MultiMeasureRest #'expand-limit = #3
      skipBars = ##t
      autoBeaming = ##f
      hairpinToBarline = ##f
      \override BarNumber #'break-visibility = #end-of-line-invisible
      \override CombineTextScript #'avoid-slur = #'outside
      barNumberVisibility = #(every-nth-bar-number-visible 5)
      \override DynamicTextSpanner #'dash-period = #-1.0
      \override InstrumentSwitch #'font-size = #-1

      % Rest collision
      \override RestCollision #'positioning-done = #merge-rests-on-positioning
      % Auto-Accidentals: Use modern-cautionary style...
      extraNatural = ##f
      autoAccidentals = #'(Staff (same-octave . 0))
      autoCautionaries = #'(Staff (any-octave . 0) (same-octave . 1))
      printKeyCancellation = ##t
  }
  \context {
      \RemoveEmptyStaffContext 
  }
  \context {
      \Lyrics
      \override VerticalAxisGroup #'minimum-Y-extent = #'(0.5 . 0.5)
  }
  \context {
      \StaffGroup 
      \consists "Instrument_name_engraver"
  }
}
