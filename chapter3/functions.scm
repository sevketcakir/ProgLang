(define fact (lambda (n) (if (= n 1) 1 (* n (fact (- n 1))))))
(define square-list (lambda (L)
  (if (null? L) '()
    (cons (* (car L) (car L)) (square-list 
		(cdr L))))))
(define listsum (lambda (L) 
	(if (null? L) 0 (+ (car L) (listsum (cdr L))))))
	
(define make-double (lambda (f)
   		(lambda (x) (f x x))))
(define square (make-double *))
(define double (make-double +))
