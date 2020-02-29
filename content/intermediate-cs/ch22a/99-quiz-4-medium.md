---
title: "Quiz 4 (Medium)"
date: 2019-03-04T07:34:29-06:00
weight: 99
draft: false
#type: slide
#theme: white
description: "ssm, pairorder"
---

1. `ssm: number(start) number(end) -> number`. Find the sum of all of
   the square roots of odd numbers between `start` and `end`
   (inclusive). Except skip taking the square roots of any perfect
   squares like 49
   
        (check-within (ssm 21 27) 
                      (+ (sqrt 21) (sqrt 23) (sqrt 27)) ; skip 25
                      0.01)
                      
        (check-within (ssm 7 12)
                      (+ (sqrt 7) (sqrt 11)) ; skip 9 - perfect square
                        0.01)

        (check-within (ssm 101 1001) 10008.2 0.1)


2. The `pairorder: string -> string` function takes a string and puts
   each adjacent pair of letters in alphabetical order, beginning at
   the left and working to the right _one_ letter at a time. This
   means that a "z" could potentially move several times in one call
   to `pairorder`: "zba" when processing the first pair would produce
   "bza" then when processing the second pair would produce "baz".
   
        (check-expect (pairorder "zba") "baz")
        (check-expect (pairorder "ba") "ab")
        (check-expect (pairorder "cba") "bac")
        (check-expect (pairorder "complex") "cmolepx")

        
   
