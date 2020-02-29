---
title: "Advanced Structures"
date: 2020-02-24T09:37:13-06:00
weight: 30
draft: false
#type: slide
#theme: white
description: "Remember more than one thing at a time."
---

You can simplify the writing of lots of "struct copying" functions by
making a separate file that contains the powerful Racket function
`struct-copy`, which is disabled in the student modes.

The example file below creates a struct called "m" that contains a
position, velocity, score, and a boolean for if the game is lost. The
file also creates "updating" functions that change only one part of
the struct.

**NOTE:** In this file you must change the language to racket (Language
-> Choose Language... -> Racket).

```racket
#lang racket
(require lang/posn)
(provide (all-defined-out)

(define-struct m (pos vel score lost?) #:transparent)

(define (m-update-pos x w)
    (struct-copy m x [pos w]))
(define (m-update-vel x w)
    (struct-copy m x [vel w]))
(define (m-update-score x w)
    (struct-copy m x [score w]))
(define (m-update-lost x w)
    (struct-copy m x [lost? w]))
```

Save this file as "m-struct.rkt" and then use `(require
"m-struct.rkt")` in your main program.

## Summary

1. Using `#lang racket` allows some advanced features at a cost of
   some complexity.
2. Every struct needs `#:transparent`. This is best explained as a
   design mistake in the Racket language.
3. Read about
   [`struct-copy`](https://docs.racket-lang.org/reference/struct-copy.html?q=struct-copy#%28form._%28%28lib._racket%2Fprivate%2Fbase..rkt%29._struct-copy%29%29)
   or follow the examples below.


## Example

```racket 
(require picturing-programs)
(require "m-struct.rkt")

(define example-1
    (make-m (make-posn 5 12) 
            (make-posn 2 -1) 
            120 
            #false))
(define example-2
    (m-update-score example-1 150))
(define example-3
    (m-update-pos example-1 (make-posn 8 15)))
```

