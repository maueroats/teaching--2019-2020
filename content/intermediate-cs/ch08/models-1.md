---
title: "8. Number Models 1"
date: 2018-11-13T14:25:10-06:00
weight: 10
draft: false
#type: slide
#theme: white
description: "Number models, beginning to middle difficulty."
---

{{< use-mathjax >}}


1. A circle increases its radius by 5 every tick. Hitting a key
reduces the radius by 50%.

2. A square moves along a horizontal line. Every time you move the mouse, it moves right 1 pixel. When you hit a key it moves left 4 pixels.

3. A small solid circle randomly moves between x=20, x=60, and x=100 on a fixed horizontal line. (You pick the $y$ coordinate.)

4. Make the graph of $y=x(200-x)/50$. See below.

## Graphing a function

Method for graphing $y=f(x)$ using `build-image`: color points based
on $c(x,y) = y-f(x)$. When $c(x,y)=0$, the point $(x,y)$ is exactly on the graph. Depending on how thick you want the line, try $c(x,y)<5$ to make black or gray.
```racket
(define (c x y)
    (- y (* 1/2 x)))
(define (color-f x y)
    (gray (limit (* 50 (c x y)))))
(define (gray n)
    (make-color n n n))
(define (limit n) n) ; FIX: you should fix this one yourself
```
