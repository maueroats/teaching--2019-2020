---
title: "22a. Helpers: Count Divisors"
date: 2018-03-06T10:37:37-06:00
weight: 91
draft: false
#type: slide
#theme: white
description: "A complete lecture on count-divisors."
---

## Warmup

Write a function `count-div`: number(k) number(n) -> number that gives
1 if k divides n and 0 otherwise.

## Warmup Solution

     (define (count-div k n)
        (cond [(= 0 (remainder n k))
                1]
              [else
                0]
                
     (check-expect (count-div 3 6) 1)
     (check-expect (count-div 4 6) 0)

## Count-divisors example

     (count-divisors 2) => 1 + 1
     (count-divisors 3) => 1 + 0 + 1
     (count-divisors 4) => 1 + 1 + 0 + 1
     (count-divisors 5) => 1 + 0 + 0 + 0 + 1

Notice that there is _not_ a pattern of repeating previously used results! See the longer list of factors to confirm:

    1 => 1
    2 => 1,2
    3 => 1,3
    4 => 1,2,4
    5 => 1,5
    6 => 1,2,3,6
    7 => 1,7
    8 => 1,2,4,8
    9 => 1,3,9

This means that you cannot write a recursive function the way we have been writing them. `(count-divisors 5)` has nothing to do with `(count-divisors 4)`.


## Count-divisors walkthrough

It really looks like we need to keep track of two things: 

* what number we are counting the divisors for (always the same, let's call it `end`)
* the number that we are test dividing (changes, let's call it `start`)

Purpose: find how many divisors of `end` there are between `start` and
`end` including both start and end.

Skeleton:

    (define (count-divisors-help start end)
      ; not finished
      0)

Now you write examples. You could abbreviate this function's name as `cdh` if writing on paper.

## Examples

Your examples should look like this list below (abbreviating `count-divisors-help` as `cdh`:

    (cdh 1 6) => 4
    (cdh 2 6) => 3
    (cdh 3 6) => 2
    (cdh 4 6) => 1
    (cdh 5 6) => 1
    (cdh 6 6) => 1

## Finale

You know there are two steps to writing a recursive function: 

1. make sure it stops, when it should stop; and 
2. make sure it keeps going when it should keep going.

### Stops

You can write a conditional that always gets the right answer in one case. Try it! 

### Keep going

You can see that there could be a recursive function call with `start`
increasing by one each time, because the answer for `start=3` builds
off the answer for `start=4`.

The two ingredients for this part are:

1. `(count-divisors-help (+1 start) end)`
2. `(count-div start end)`

You have to try writing the rest of the function now!

### Answer

I hope you have worked through each step and tried to understand it before reading the solution. 

[Bare-bones solution](count-divisors-real-solution.rkt) and a [complete solution with checks](count-divisors-full.rkt), straight from lecture.
