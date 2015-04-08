; 
;	Checking how good is a guess by looking at how it changes.
;
	
(define (square x) (* x x))

(define (sqroot-iter guess x)
  (if (good-enough? guess (make-new-guess guess x))
      guess
      (sqroot-iter (make-new-guess guess x) x)
      )
  )

(define (make-new-guess guess x)
  (average guess (/ x guess))
  )

(define (average a b)
  (/ (+ a b) 2)
  )

(define (good-enough? guess x)
  (< (abs (- guess x)) (* guess 0.01))
  )

(define (sqroot x) (sqroot-iter 1.0 x))

(sqroot 0.0001)
