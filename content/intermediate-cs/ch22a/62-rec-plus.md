---
title: "22a. Practice++"
date: 2020-02-27T07:50:17-06:00
weight: 62
draft: false
#type: slide
#theme: white
description: "More practice: sum of sevenths, sum of y-coordinates on a parabola."
---

{{< use-mathjax >}}

A few more practice problems.

## Parabola

Using the parabola $$f(x) = (x+8)(x-6)$$, find the sum of all of the
y-coordinates on the graph of $y=f(x)$ with x an integer between
`left` and `right`.

     (check-expect (parabola-ys 2 2) (* 10 -4))
     (check-expect (parabola-ys 2 3) (+ (* 10 -4) (* 11 -3)))


## Sevenths

The function
 `add-sevenths: number(start) number(end) -> number`
 finds the sum of all of the sevenths with integer numerator between
 start and end. 
 
    (define (add-sevenths start end) 0)
    (check-expect (add-sevenths 1 4) (+ 1/7 2/7 3/7 4/7))
    (check-expect (add-sevenths 2 4) (+ 2/7 3/7 4/7))
    (check-expect (add-sevenths 3 4) (+ 3/7 4/7))
    (check-expect (add-sevenths 4 4) 4/7)

## Add Odd

Sum all of the odd numbers between start and end (inclusive).

    (define (add-odd start end) 0)
    (check-expect (add-odd 12 12) 0)
    (check-expect (add-odd 11 11) 11)
    (check-expect (add-odd 10 11) 11)
    (check-expect (add-odd 9 11)  (+ 9 11))
    (check-expect (add-odd 8 11)  (+ 9 11))
    (check-expect (add-odd 7 11)  (+ 7 9 11))
    
## Add 5s

Sum all of the multiples of five between the start and end number.

    (define (add-5s start end) 0)
    (check-expect (add-5s 3 17) (+ 5 10 15))
