(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))

(define (even? n)
  (= (remainder n 2) 0))

(define (fast-add a b)
  (cond ((= b 0) 0)
        ((= b 1) a)
        ((even? b) (fast-add (double a) (halve b)))
        (else (+ (fast-add a (- b 1)) a))))

