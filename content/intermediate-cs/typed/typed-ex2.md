---
title: "Typed Exercises 2"
date: 2019-05-07T07:41:36-05:00
weight: 60
draft: false
#type: slide
#theme: white
description: "Additional practice writing typed functions, includes lists and recursion."
---

1. `ezn`: Create a list of `n` numbers, counting from n down to 0.

        (check-expect (ezn 5) (list 5 4 3 2 1 0))
        (check-expect (ezn 7) (list 7 6 5 4 3 2 1 0))
        
2. `rpt`: Given a word and a number, make a list containing that word
   the given number of times, except chop off one more letter at the start
   of the word each time you repeat it.
   
        (check-expect (rpt "word" 4) (list "word" "ord" "rd" "d"))
        (check-expect (rpt "cat" 2) (list "cat" "at"))
        
3. `perfect-squares`: Given a list of integers, return a list of all
   of the perfect squares contained in that list. If you work with
   real numbers, you probably want `Nonnegative-Real` numbers.
   
4. `grow-sq`: Given a start and end integer, make a list of images,
   all outline squares beginning at side length start, and ending at side
   length <= end.
   
     {{% figure src="grow-sq.png" title="(grow-sq 10 17)" %}}
   
5. `sqc`: Given two integers `start` and `end`, draw one image which
   is an overlay of images as n goes from `start` to `end` increasing
   by 1 each time. The image is an outline circle of radius `10*n` when n is even
   and an outline square of side length `20*n` when n is odd. 

     {{% figure src="sqc.png" title="(sqc 5 11)" %}}


## Facts about Numbers

There are many number types, including:

* `Number`
* `Real`
* `Integer`
* `Nonnegative-Real`
* `Nonnegative-Integer`
* `Positive-Integer`

Pick the most appropriate one. For example, if you are taking the
square root of a number, `Nonnegative-Real` might be a good choice. If
that number is also an integer, then use `Nonnegative-Integer`.

The type `Number` actually means complex number
(like `5+12i` from math class), so lots of the time you really want to
use `Real`.

## Trouble spots

When you subtract one from a positive integer, Racket no longer knows
it is positive (could have turned into zero). However, adding one to a
positive integer gives you something that is definitely positive. That
means when you are working with positive numbers and you have a choice
between counting up or counting down, count up.

Pro tip: if you have an `Integer` and the error message tells you that
a `Positive-Real` is needed, you should change your type to
`Positive-Integer`. 

