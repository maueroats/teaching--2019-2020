---
title: "22a. Recursion Quiz Practice"
date: 2018-03-02T08:00:42-06:00
weight: 80
draft: false
#type: slide
#theme: white
description: "Quiz practice: hawaiian-earring, double-ss, math-mess."
---

Use `define/contract` for each function.

1. `hawaiian-earring`: number(stage) number(radius) -> image. Create `stage` circles with each successive circle 80% of the radius of the previous one. 

    {{< figure src="hawaiian-earring.png" title="(hawaiian-earring 10 80)" >}}


2. `double-ss`: string -> string. Double each `s` appearing in the string.

        (check-expect (double-ss "The snake was silent.") 
                      "The ssnake wass ssilent.")

3. `math-mess`: number(start) number(end) -> number. For all of the numbers between `start` and `end`: add the squares of the even numbers, subtract the square roots of the odd numbers.

        (math-mess 10 10) => (* 10 10)
        (math-mess 11 11) => (- (sqrt 11))
        (math-mess 10 11) => (- (* 10 10) (sqrt 11))


