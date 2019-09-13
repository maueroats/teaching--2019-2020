---
title: "Ch1 HW2"
date: 2019-09-10T09:21:07-05:00
weight: 30
draft: false
#type: slide
#theme: white
description: "Warmup and practice using lambda and list processing."
---

## Warmups

1. GREET-IZE: String -> (String->String). Take in a greeting. Return a
   function that takes in a name and outputs the string "greeting,
   name".
   
```
(define-test TEST-GREET-IZE 
  "Verify you understand function-returning functions."
  (assert-equal "Hello, Doc" (funcall (greet-ize "Hello") "Doc"))
  (assert-equal "Goodbye, World" (funcall (greet-ize "Goodbye") "World")))
```

2. WIPE-NESTED: List -> List. Change every non-list any nested list
   of the input to 'BLACK. 
   
```lisp
(define-test TEST-WIPE
  "Make sure the structure of the list is retained when wiping."
  (assert-equal '(BLACK BLACK BLACK) (wipe-nested '(orange blue green)))
  (assert-equal '(BLACK (BLACK BLACK BLACK) BLACK ((BLACK)))
                (wipe-nested '(R (R G B) G ((B))))))
```


## Homework


This is practice programming from Chapter 1.

1. Function DUBL: doubles its input.
2. Write a single test for DUBL.
3. Function DUBLR: doubles every input in a list.
4. Colorizer: turns integers into color symbols: 1 -> `'RED'`, 2 ->
   `'WHITE`, 10 -> `'BLUE`, any other becomes `'NONE`.
4. Function N-NER: takes in a number and a list. Adds the number to
   every element in the list (returning the new list).
5. Function MY-MAKE-SEQ: inputs are three numbers (a,b,c), output is a function
   that takes in a number x and puts out the list (x+a, x+b, x+c).
6. Write two tests for MY-MAKE-SEQ.

