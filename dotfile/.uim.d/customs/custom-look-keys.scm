(define look-on-key '("zenkaku-hankaku" "<Shift> " "Private2"))
(define look-on-key? (make-key-predicate '("zenkaku-hankaku" "<Shift> " "Private2")))
(define look-off-key '("zenkaku-hankaku" "<Shift> " "Private1"))
(define look-off-key? (make-key-predicate '("zenkaku-hankaku" "<Shift> " "Private1")))
(define look-completion-key '("tab" generic-end-of-preedit-key))
(define look-completion-key? (make-key-predicate '("tab" generic-end-of-preedit-key?)))
(define look-next-char-key '("right" "<IgnoreCase><Control>f"))
(define look-next-char-key? (make-key-predicate '("right" "<IgnoreCase><Control>f")))
(define look-prev-char-key '(generic-backspace-key generic-go-left-key))
(define look-prev-char-key? (make-key-predicate '(generic-backspace-key? generic-go-left-key?)))
(define look-next-candidate-key '("down" "<IgnoreCase><Control>n"))
(define look-next-candidate-key? (make-key-predicate '("down" "<IgnoreCase><Control>n")))
(define look-prev-candidate-key '("up" "<IgnoreCase><Control>p"))
(define look-prev-candidate-key? (make-key-predicate '("up" "<IgnoreCase><Control>p")))
(define look-save-dict-key '("<IgnoreCase><Control>s" "return"))
(define look-save-dict-key? (make-key-predicate '("<IgnoreCase><Control>s" "return")))
(define look-load-dict-key '("<IgnoreCase><Control>l"))
(define look-load-dict-key? (make-key-predicate '("<IgnoreCase><Control>l")))