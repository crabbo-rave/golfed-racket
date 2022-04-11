#lang racket

(require qi)(define(g-f t m)(for([a(range 1(+ 1 m))])(~>(t)dict-keys sep(pass(~>>(gcd a)(dict-has-key? t)))(><(dict-ref t _))string-append(if non-empty-string? _(gen a))println)))

(define tbl '((3 . "Fizz") (5 . "Buzz") (7 . "Bizz")))
(g-f tbl 50)