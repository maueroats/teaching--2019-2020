---
title: "22a. Recursion Practice 4"
date: 2018-03-12T08:18:47-05:00
weight: 94
draft: false
#type: slide
#theme: white
description: "Change penguin to penguins and mouse to mice in zoo-1, sum5, double-middle."
---

Classwork (20 min) and discussion (25 min).

1. `zoo-1`: string -> string. Change every occurrence of "penguin" to "penguins" and change every occurrence of "mouse" to "mice". Leave everything else alone.

         (check-expect (zoo-1 "mouse") "mice")
         (check-expect (zoo-1 "xmouse") "xmice")
         (check-expect (zoo-1 "mousex") "micex")
         (check-expect (zoo-1 "mouse moose") "mice moose")
         (check-expect (zoo-1 "mouse mouse") "mice mice")
         (check-expect (zoo-1 "penguin penguins") "penguins penguinss")


## Review Homework

2. `sum5`: number(n) -> number. Find the sum of the first `n` fifth powers, starting
with 1.

        (check-expect (sum5 3) (+ (* 1 1 1 1 1) (* 2 2 2 2 2) (* 3 3 3 3 3)))
        
3. `double-middle`: string -> string. Double every letter between j
   and q in the alphabet (inclusive).

        (check-expect (double-middle "jog snake") "jjoog snnakke")
        
