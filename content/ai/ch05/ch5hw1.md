---
title: "Ch5 HW1"
date: 2019-11-11T21:22:00-06:00
weight: 51
draft: false
#type: slide
#theme: white
---

The purpose of this homework is for you to practice your Lisp
program-writing skills. If you find yourself writing "Racket code",
ask for help before the end of the week! 

1. (`addlength`) (SC 3.12) Write a function that takes a list as input
   and returns a new list with the length of the input added onton the
   front of it.
   
        (addlength '(a big cat)) ==> '(3 a big cat)

2. (`crank-call`) (SC 3.14) (a) Without running the function: what is
   the result of `(crank-call 'wanda 'fred)`? (b) Modify the function
   so it behaves as a 
   non-crank call using "quasiquote" but not "list".
   
        (defun crank-call (caller callee)
          '(hello callee this is caller calling))

3. (SC Section 4.8, EX 4.14) Carefully state the rules for evaluating `and` and
   `or`. What is `(and 'a 'b)`? What is `(or nil 'bank 'money)`? 
   Give the results of each without typing them:
   
           (and ’fee ’fie ’foe)
           (or ’fee ’fie ’foe)
           (or nil ’foe nil)
           (and ’fee ’fie nil)
           (and (equal ’abc ’abc) ’yes)
           (or (equal ’abc ’abc) ’yes)


4. (`same-sign`) (SC, Page 124) Write a function `(same-sign a b)`
   that returns true if `a` and `b` have the same sign (choices: +,-, or 0).

5. Get the handout and do exercise 6.41 (SC, Ex 6.41). Use the [starter
   code](housemaze.lisp) that loads the house definition.
   
