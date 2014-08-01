(define prime-on-key '("<IgnoreCase><Control>j" generic-on-key))
(define prime-on-key? (make-key-predicate '("<IgnoreCase><Control>j" generic-on-key?)))
(define prime-latin-key '("<Control>l" generic-off-key))
(define prime-latin-key? (make-key-predicate '("<Control>l" generic-off-key?)))
(define prime-wide-latin-key '("<Control>L"))
(define prime-wide-latin-key? (make-key-predicate '("<Control>L")))
(define prime-begin-conv-key '(generic-begin-conv-key))
(define prime-begin-conv-key? (make-key-predicate '(generic-begin-conv-key?)))
(define prime-commit-key '(generic-commit-key))
(define prime-commit-key? (make-key-predicate '(generic-commit-key?)))
(define prime-cancel-key '(generic-cancel-key))
(define prime-cancel-key? (make-key-predicate '(generic-cancel-key?)))
(define prime-next-candidate-key '(generic-next-candidate-key))
(define prime-next-candidate-key? (make-key-predicate '(generic-next-candidate-key?)))
(define prime-prev-candidate-key '(generic-prev-candidate-key))
(define prime-prev-candidate-key? (make-key-predicate '(generic-prev-candidate-key?)))
(define prime-next-page-key '(generic-next-page-key))
(define prime-next-page-key? (make-key-predicate '(generic-next-page-key?)))
(define prime-prev-page-key '(generic-prev-page-key))
(define prime-prev-page-key? (make-key-predicate '(generic-prev-page-key?)))
