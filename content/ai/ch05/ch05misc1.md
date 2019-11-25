---
title: "Ch5 Misc 1"
date: 2019-11-25T09:31:07-06:00
weight: 21
draft: false
#type: slide
#theme: white
---

* Learn `reduce` and `every`.

* [reduce
  info](https://riptutorial.com/common-lisp/example/8770/summing-a-list)
  
* [every](http://clhs.lisp.se/Body/f_everyc.htm) including
  friends. Notice how the later examples work on multiple inputs.

(SC 7.16-22)

## Reduce

1. Suppose we had a list of sets ((A B C) (C D A) (F B D) (G)) that we
wanted to collapse into one big set. If we use APPEND for our
reducing function, the result won’t be a true set, because some elements
will appear more than once. What reducing function should be used
instead?

2. Write a function that, given a list of lists, returns the total length of all
the lists. This problem can be solved two different ways. Give at
least two ways to solve.

3. Compare `(REDUCE #’+ NIL)` to `(REDUCE #’* NIL)`. Say what they are
  and why you think
  the answers are that way.

## Every

In the exercises below, `throdd` refers to a number that is 1 or 2
mod 3. 

1. Write a function ALL-ODD that returns T if every element of a list of
numbers is throdd.
2. Write a function NONE-ODD that returns T if every element of a list of
numbers is not throdd.
3. Write a function NOT-ALL-ODD that returns T if not every element of
a list of numbers is throdd.
4. Write a function NOT-NONE-ODD that returns T if it is not the case
that a list of numbers contains no throdd elements.

## Etc

1. Write a function `both-close` that takes as input two lists of the
   same length, and returns true if the corresponding elements are
   within 5 of each other.
   
        (assert-true (both-close '(10 20 30 50) '(8 23 25 45)))
        (assert-false (both-close '(10 20 30) '(15 14 29)))

2. Write a function `ALL-EQUAL` that returns T if the first
element of a list is equal to the second, the second is equal to the third,
the third is equal to the fourth, and so on. `(ALL-EQUAL ’(I I I I))`
should return T. `(ALL-EQUAL ’(I I E I))` should return NIL. `ALL-
EQUAL` should return T for lists with less than two elements.

3. Write `EVERY-OTHER`, a function that returns every other
element of a list—the first, third, fifth, and so on. `(EVERY-OTHER
’(A B C D E F G))` should return `(A C E G)`. `(EVERY-OTHER ’(I
CAME I SAW I CONQUERED))` should return `(I I I)`. This is designed to
be a recursive function exercise, so try it that way in addition to
another way.
