; 
;	Newton's method for cube roots.
;

(define (cube-root x)	
	(define (cube-root-iter guess)
  		(if (good-guess? guess)
			guess
			(cube-root-iter (improve-guess guess))
		)
	)
	(define (good-guess? guess)
	  	(< (abs(- (* guess guess guess) x)) 0.001)
	)
	(define (improve-guess guess)
	  	(/ (+ (/ x (* guess guess)) (* 2 guess)) 3)
	) 
	(cube-root-iter 1.0)
)

(cube-root 9)
	
