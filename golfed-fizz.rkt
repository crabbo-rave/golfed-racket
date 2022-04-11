#lang racket

;; 74 characters
(for([i 101])(writeln(match(gcd i 15)[15'fizzbuzz][3'fizz][5'buzz][_ i])))