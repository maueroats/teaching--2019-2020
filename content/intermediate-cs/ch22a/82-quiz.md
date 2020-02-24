---
title: "22a. Recursion Practice I 2019"
date: 2019-02-19T21:14:22-06:00
weight: 82
draft: false
#type: slide
#theme: white
description: "A quiz on recursive functions."
---

{{% use-mathjax %}}

1. (`altsum`) One way to see if a number is divisible by 11 is to find
   the alternating sum (+ then -) of the digits of the number,
   beginning at the ones digit, and see if that number is divisible
   by 11. The alternating sum of the digits if 1495 is 5-9+4-1 = -1, so 1495
   is not divisible by 11. Design and test the function 
   `altsum: number(n) -> number`.

    ```racket
    (check-expect (altsum 95) (+ 5 -9))
    (check-expect (altsum 1495) (+ 5 -9 4 -1))
    ```
        
2. (`sum-octa`) The n-th octagonal number is the number of dots that it
    takes to draw all of the edges of a regular octagon with n dots
    per edge. The formula for the n-th octagonal number is $3n^2-2n$,
    or `(- (* 3 n n) (* 2 n))` in Racket.
    
    Write a function `sum-octa: number(start) number(end) -> number`
    to find the sum of all of n-th octagonal numbers beginning with
    `n=start` and ending with `n=end`.

        (check-expect (sum-octa 1 2) 9)
        (check-expect (sum-octa 2 5) 134)
        
    | n | octagonal number n |
    |---|--------------------|
    | 1 |    1    |
    | 2 |    8    |
    | 3 |   21    |
    | 4 |   40    |
    | 5 |   65    |
    
    {{% figure
    src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Centered_octagonal_number.svg/1200px-Centered_octagonal_number.svg.png"
    height="300" 
    title="Blue octagonal numbers, plus extra octagons" %}}
    
    

