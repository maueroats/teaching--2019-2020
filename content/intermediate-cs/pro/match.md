---
title: "Match"
date: 2018-02-21T15:01:29-06:00
weight: 40
draft: false
#type: slide
#theme: white
description: "Take structures apart without repeatedly doing (color-red c), etc."
---

Pattern matching lets you take apart structures into their component
variables in a simple way. 

You can use `(require racket/match)` to activate [pattern matching](https://docs.racket-lang.org/guide/match.html?q=pattern%20match).

## Matching

The `match` function is like `cond` except it checks to see if a value
matches a certain "literal" pattern or question. It can create
variables to use immediately instead of requiring a helper function.

### Problem

Write a function that takes in a number or a posn and returns the
distance to the correct origin (either 0 or (0,0)) depending on which
type it gets.

### Example Solution: Cond 

    (define (cond-to-zero w)
      (cond [(posn? w)    (sqrt (+ (sqr (posn-x w))
                                   (sqr (posn-y w))))]
            [(number? w)  (abs w)]))

### Example Solution: Match

    (define (match-to-zero w)
      (match n
        [(posn x y)  (sqrt (+ (sqr x)
                              (sqr y)))]
        [number?     (abs w)]))


## Ignoring parts of a model

You can use the underscore `_` to match places that you want to
ignore. This example shows how to pull out two scores from a model and
use them to find the total number of points in the game.

    (define-struct game (p1pos p1score p2pos p2score))
    (define (total-score model)
      (match model
        [(game _ s1 _ s2)
         (+ s1 s2)]

## List processing with matching

Suppose you want to add all of the numbers in a list. You can use the
`'()` pattern to match the empty list. The pattern `(list a more ...)`
makes `a` match the first of the list and `more` match the rest of the list.

    (define (add-all data)
        (match data
          ['()
           0]
          [(list a more ...)
           (+ a (add-add more))]))
