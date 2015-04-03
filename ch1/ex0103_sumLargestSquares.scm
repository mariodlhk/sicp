; Chapter 1, ex03
; Define a procedure that takes three numbers as arguments 
; and returns the sum of the squares of the two larger numbers

(define (square x) (* x x))

(define (sumLargestSq a b c)
  (cond ((and (> a b) (< b c)) (+ (square a) (square c)))
  	((and (< a b) (< a c)) (+ (square b) (square c)))
  	(else (+ (square b) (square a)))
	)
  )

; Test:
(sumLargestSq 1 2 3)
(sumLargestSq 1 3 2)
(sumLargestSq 2 1 3)
(sumLargestSq 2 3 1)
(sumLargestSq 3 1 2)
(sumLargestSq 3 2 1)
