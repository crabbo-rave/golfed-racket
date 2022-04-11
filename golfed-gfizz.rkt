#lang racket

(require qi)(define t'((3 . "Fizz")(5 . "Buzz")(7 . "Bizz")))(for([a 101])(~>(t)dict-keys sep(pass(~>>(gcd a)(dict-has-key? t)))(><(dict-ref t _))string-append(if non-empty-string? _(gen a))println))