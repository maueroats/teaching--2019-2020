---
title: "For"
date: 2019-03-22T15:46:17-05:00
weight: 50
draft: false
#type: slide
#theme: white
description: "Looping constructs in Racket."
---

All of these are Google Docs.

* [Presentation on
  For](https://docs.google.com/presentation/d/1zObYBioHfX-x_r7rNt2U7qazZkWSR1Pk9_b9tXmi4VA/edit?usp=sharing),
  includes information and some exercises.
* [For Loop Exercises 1](https://drive.google.com/open?id=1GwxJLWv8-jW2pZmCxC0LSrVT8zh5SlsZ5MmQx1g7Mic)
* [For Loop Exercises 2](https://drive.google.com/open?id=1salWGYX7mwoTpSNlMXmB0kL53_o6x0wppjWe0NGgVaE)
* [Learning for/fold](https://drive.google.com/open?id=1hvwoS-dfkWp6eVfSTep9Z6oMUsHqTTBpuzjr93MhOdw)

## Intermediate Student Mode 

You can access the "for" command inside Intermediate Student Mode by using `(require racket/base)`. 

We used racket/base to get access to the "for" command. Unfortunately,
this takes away some of the nice things that picturing-programs
does. If you do something like `(make-bubble (make-posn 10 20) "red" 30)`
and see an output like `(make-bubble …)`, without being able to see
specific information in the place of the dots, then you need to read
on.

In order for you to be able to see inside your structure in the Racket language, you need to tell Racket to make it "transparent". You do that by adding a keyword, like this: 

    (define-struct person (name grade) #:transparent)

That takes care of the problem. No more changes are necessary.
