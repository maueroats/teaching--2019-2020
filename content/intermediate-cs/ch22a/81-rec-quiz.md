---
title: "22a. Recursion Quiz 2018"
date: 2018-03-05T07:59:54-06:00
weight: 81
draft: false
#type: slide
#theme: white
description: "First quiz on recursion: reciprocal-squares, blank-vowels, hollow-diagonal."
---

You may use the Picturing Programs textbook and the blog to look up functions th
at you do not know. Do not consult any other programs written by you or anyone else. (No old homework, Stack Overflow, etc.)

Use `define/contract` and have at least two check expects for each function.

1. `reciprocal-squares`: number(start) number(end) -> number. Find the sum of `1/n^2` for every `n` between `start` and `end` (including both).

    |start|end|sum  |
    |-----|---|-----|
    | 1   | 1 | 1.0 |
    | 1   | 2 |1.25 |
    | 1   | 3 |1.36111... |

2. `blank-vowels`: string(word) -> string. Change every vowel (a,e,i,o,u) to an underscore (`_`). Example: `(blank-vowels "elephant") => "_l_ph_nt"`.


3. `circle-circle`: number(big-radius) number(little-radius) number(turn-angle) number(n) -> image. Produce `n` circles of size `little-radius` around the perimeter of a circle of size `big-radius`. In between each, have a central angle of `turn-angle`.

    {{< figure src="circle-circle.png" title="(circle-circle 100 20 45 8)" >}}
    {{< figure src="circle-circle-partial.png" title="(circle-circle 120 15 30 6)" >}}
    

3. `hollow-diagonal`: number(radius) number(n): Produce `n` circles of the given radius along a diagonal.

    [{{< figure src="hollow-diagonal-1.png" title="(hollow-diagonal 20 5)" >}}](hollow-diagonal-2.png)


