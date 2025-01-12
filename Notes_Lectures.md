#Lecture 1a
Declarative knowledge = What is true
Imperative Knowledge = How to

Blackbox abstraction
Supress detail so to build bigger boxed
Primitive Object -> Means of Comination -> Means of abstraction -> Capturing Common Patterns

(* X (+ a1 a2))
(* 2 (+ 1 3)) = 8

Conventional Interfaces = Standard ways to communicate with each other
- Generic Operations
- Large-Scale structure and modularity
- Object oriented Programming
- Operations on Aggregates

Metalinguistic Abstraction = Abstraction about talking about creating new languages

Show me a language
- What are the primitive elements
- Means of combination
- Means of abstraction

Primitive Data
- 3, 17.4, 5
- +

Means of combination
(+ 3 124 5) = 254
This is call a comination
Combination = Operator(+) + Operands(3, 124, 5)

(+ 3 (*5 6) 8 2) = 43

Prefix notation = Operator is on the left of the operands
Parenthesis = This is a combination

Means of abstraction
Define
(DEFINE A (* 5 5))
(+ A A) = 625
(DEFINE B (+ A (* 5 A)))
(+ A (/ B 5))

(DEFINE (SQUARE X) (* X X))
(SQUARE 10) = 100

(DEFINE SQUARE (LAMDA (X) (* X X)))
Lambda = Make a procedure

(DEFINE (SQUARE X) (* X X)) == (DEFINE SQUARE (LAMDA (X) (* X X)))
Syntatic Sugar = Having somewhat convenient surface form to write something

(define (average x y) (/ (+ x y) 2))
(define (mean-square x y) (average (square x) (square y)))
(MEAN-SQUARE 2 5) = 4.5

Everything is a primitive in lisp

Conditionals
(DEFINE (ABS X)
	(COND ((< X 0 ) (- X))
	(COND ((= X 0 ) (0))
	(COND ((> X 0 ) (X))

(define (abs x)
	(if (< x 0)
	(- x)
	x))

(DEFINE (TRY GUESS X)
	(IF (GOOD ENOUGH? GUESS X)
	GUESS
	(TRY (IMPROVE GUESS X) X)))

(DEFINE (SQRT X) (TRY 1 X))

(define (improve guess x)
	(average guess (/ x guess)))

(define (good-enough? guess x)
	(< (abs (- (square guess) x))
	.001))

(define (sqrt x)
	(define (improve guess))
		(average guess (/ x guess)))
	(define (good-enough? guess)
		(< (abs (- (square guess) x))
		.001))
	(define (try guess)
		(if (good-enough? guess)
		guess
		(try (improve guess))))
	(try 1))
