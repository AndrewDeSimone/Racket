#lang racket

(define (sayHello name) (printf "Hello ~a" name))

(define (greater x y) (if (> x y) x y))

(define (max lis)
  (if (= (length lis) 1) (car lis) (greater (car lis) (max (cdr lis)))))

(define (maxdeep lis)
  (if (= (length lis) 1)
      (if (list? (car lis))
          (maxdeep (car lis))
          (car lis))
      (if (list? (car lis))
          (greater (maxdeep (car lis)) (maxdeep (cdr lis)))
          (greater (car lis) (maxdeep (cdr lis))))))

(define (lessthan lisa lisb) (< (length lisa) (length lisb)))

(sort '((1 2 3 4 5) (1 2 3) (1 2 3 4)) lessthan)