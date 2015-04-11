; why can't 'if' be defined as an ordinary procedure?
;
; If we defined 'if' in terms of 'cond' as a procedure ('mi-if' for instance)
; When mi-if was called (as a procedure), evaluation of both arguments 
; would take place prior to the evaluation of the 'mi-if' function.
; (because the program runs following applicative order of execution)
; As one of the arguments calls the function recursively this would result in an
; infinite recursive call.
; 

(define (mi-if pred expr-true expr-false)
  (cond (pred expr-true)
	(else expr-false)
    	)
  )

(define (square x) (* x x))
(define (mi-abs x) 
  (cond ((< x 0) (- x))
	(else x))
  )

(define (sqroot-iter guess x)
  (if (good-enough? guess x)
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
  (< (abs (- (square guess) x)) 0.001)
  )

(define (sqroot x) (sqroot-iter 1.0 x))

(sqroot 0.0001)
