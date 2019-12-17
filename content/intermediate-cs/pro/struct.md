---
title: "Structures"
date: 2018-10-12T21:21:50-05:00
weight: 30
draft: false
#type: slide
#theme: white
description: "Remember more than one thing at a time."
---

This is Chapter 20 in the text. Since this is the pro section, I
include details you would not usually see.

1. Using `#lang racket` allows some advanced features at a cost of
   some complexity.
2. Every struct needs `#:transparent`. This is best explained as a
   design mistake in the Racket language.
3. Read about
   [`struct-copy`](https://docs.racket-lang.org/reference/struct-copy.html?q=struct-copy#%28form._%28%28lib._racket%2Fprivate%2Fbase..rkt%29._struct-copy%29%29)
   or follow the examples below.

```racket 
#lang racket
(require lang/posn)
(define-struct m (pos vel color) #:transparent)
(define example-1
    (make-m (make-posn 5 12) 
	        (make-posn 2 -1) 
			(make-color 255 100 0)))

(define example-2
    (struct-copy m example-1 [vel (make-posn -3 4)]))
```

## Check-expects 

In `#lang racket` you need to do checks using the
[rackunit](https://docs.racket-lang.org/rackunit/api.html?q=rackunit)
module.

You need to use `check-equal?` or do what I do and create an alias for `check-expect`.

```racket
(require rackunit)
(define check-expect check-equal?)
```
