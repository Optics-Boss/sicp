#lang sicp
;Exercise 1.1
10 ;10
(+ 5 3 4) ;12
(- 9 1) ;8
(/ 6 2) ;3
(+ (* 2 4) (- 4 6)) ;6
(define a 3)
(define b (+ a 1))
(+ a b (* a b)) ;19
(= a b) ;#f

(if (and (> b a) (< b (* a b)))
    b
    a) ;4

(cond ((= a 4) 6)
      ((= a b) (+ 6 7 a))
      (else 25)) ;25

(+ 2 (if (> b a) b a)) ;6

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1)) ;16

;Exercise 1.2
(/
 (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
 (* 3 (- 6 2) (- 2 7)))

;Exercise 1.3
(define (square x) (* x x))
(define (square-sum a b) (+ (square a) (square b)))

(define (sum-of-two-largest-squares a b c)
  (cond ((and (>= a c) (>= b c))(square-sum a b))
        ((and (>= b c) (>= c a))(square-sum b c))
        (else (square-sum a c))
  ))

(sum-of-two-largest-squares 3 1 4)

;Exercise 1.4
(define (a-plus-abs-b a b)
((if (> b 0) + -) a b))

(a-plus-abs-b 4 -1)
;if b is bigger than zero than make from the minus number a postive number and count them up

;Exercise 1.5
(define (p) (p))
(define (test x y)
(if (= x 0) 0 y))

;(test 0 (p)) it produces an infinite loop
;Applicative order evaluation is that it will evaluate the arguments and then apply.
;Lisp uses applicative order evaluation
;Normal order evaluation it will fully expand and then reduce.
;It will not evaluate the operands until their values are actually needed.

;Exercise 1.6
(define (sqrt-iter guess x)
  (if(good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs(- (square guess) x)) 0.001))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)

;You get an infinite loop. The parameters are calculated first and that causes an infinite loop.
;So if the parameter is a function it will always execute that function first, before it goes to the body

;Exercise 1.7