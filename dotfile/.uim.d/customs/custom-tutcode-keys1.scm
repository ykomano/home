(define tutcode-on-key '("<Control>\\" generic-on-key))
(define tutcode-on-key? (make-key-predicate '("<Control>\\" generic-on-key?)))
(define tutcode-off-key '("<Control>\\" generic-off-key))
(define tutcode-off-key? (make-key-predicate '("<Control>\\" generic-off-key?)))
(define tutcode-kana-toggle-key '("<IgnoreShift>'" "<Shift>Private2"))
(define tutcode-kana-toggle-key? (make-key-predicate '("<IgnoreShift>'" "<Shift>Private2")))
(define tutcode-katakana-sequence "")
(define tutcode-hiragana-sequence "")
(define tutcode-kigou-toggle-key '("<IgnoreShift><Control>_"))
(define tutcode-kigou-toggle-key? (make-key-predicate '("<IgnoreShift><Control>_")))
(define tutcode-kigou2-toggle-key '())
(define tutcode-kigou2-toggle-key? (make-key-predicate '()))
(define tutcode-mazegaki-start-sequence "alj")
(define tutcode-bushu-start-sequence "ala")
(define tutcode-interactive-bushu-start-sequence "")
(define tutcode-latin-conv-start-sequence "al/")
(define tutcode-kanji-code-input-start-sequence "")
(define tutcode-history-start-sequence "")
(define tutcode-auto-help-redisplay-sequence "")
(define tutcode-auto-help-dump-sequence "")
(define tutcode-katakana-commit-key '())
(define tutcode-katakana-commit-key? (make-key-predicate '()))
(define tutcode-stroke-help-toggle-key '("<Control>/"))
(define tutcode-stroke-help-toggle-key? (make-key-predicate '("<Control>/")))
(define tutcode-begin-completion-key '("<Control>."))
(define tutcode-begin-completion-key? (make-key-predicate '("<Control>.")))
(define tutcode-begin-conv-key '(generic-begin-conv-key))
(define tutcode-begin-conv-key? (make-key-predicate '(generic-begin-conv-key?)))
(define tutcode-commit-key '(generic-commit-key))
(define tutcode-commit-key? (make-key-predicate '(generic-commit-key?)))
(define tutcode-cancel-key '("<IgnoreCase><Control>u" generic-cancel-key))
(define tutcode-cancel-key? (make-key-predicate '("<IgnoreCase><Control>u" generic-cancel-key?)))
(define tutcode-next-candidate-key '(generic-next-candidate-key))
(define tutcode-next-candidate-key? (make-key-predicate '(generic-next-candidate-key?)))
(define tutcode-prev-candidate-key '("delete" generic-prev-candidate-key))
(define tutcode-prev-candidate-key? (make-key-predicate '("delete" generic-prev-candidate-key?)))
(define tutcode-undo-sequence "")
(define tutcode-help-sequence "")
(define tutcode-help-clipboard-sequence "")
(define tutcode-paste-key '())
(define tutcode-paste-key? (make-key-predicate '()))
(define tutcode-clipboard-seq2kanji-start-sequence "")
(define tutcode-selection-mazegaki-start-sequence "")
(define tutcode-selection-mazegaki-inflection-start-sequence "")
(define tutcode-selection-katakana-start-sequence "")
(define tutcode-selection-kanji2seq-start-sequence "")
(define tutcode-selection-seq2kanji-start-sequence "")