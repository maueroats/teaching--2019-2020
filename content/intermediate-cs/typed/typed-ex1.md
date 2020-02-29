---
title: "Typed Exercises 1"
date: 2019-05-07T07:24:27-05:00
weight: 50
draft: false
#type: slide
#theme: white
description: "Introductory exercises for learning Typed Racket."
---

1. Use the `[ name : Type ]` method of specifying a type to write the
   function `sub7` which takes in a number and subtracts 7 from it.l
   
2. Use the `(: name Type)` method of specifying a type to write the
   function `triple` which takes in a number and triples it.
   
## Write these functions

Use Typed Racket to write these functions. Make sure you write the
output type as well as the input types.

1. `sq18`: take in a number, square it, and subtract 18.
2. `sl5`: take in a string, return five more than its length.
3. `ssl`: take in two strings, find the sum of their lengths.

## Technical details

Sometimes `Number` is not restrictive enough. If you mean a number on
the number line, you have to tell Racket that you want a `Real`
number. Racket does know about complex numbers!

3. Write a function of two inputs that finds the absolute value of the
   difference between them.
   
4. Write a function that takes in two real numbers and returns the one
   that is larger (try this using `cond` or `if`). Technical: Experiment to see
   if you can use `Number` as the type. (Why not?)
   
