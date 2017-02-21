#lang racket
(define square-list (lambda (L)
  (if (null? L) '()
    (cons (* (car L) (car L)) (square-list 
		(cdr L))))))
(define max-list (lambda (L)
   (if (null? (cdr L)) (car L)
       (if (> (car L) (max-list (cdr L))) (car L)
                       (max-list (cdr L)) )  )))

(define make-double (lambda (f)
   		(lambda (x) (f x x))))

(define square (make-double *))
(define double (make-double +))
(define ekle (lambda (x y) (+ (+ x y) 2)))