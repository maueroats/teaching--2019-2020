---
title: "Number Model Review II"
date: 2018-11-28T07:25:03-06:00
weight: 60
draft: false
#type: slide
#theme: white
description: "Review with focus on graphing functions."
---

Definitions: _people coordinates_ are coordinates where (0,0) refers to
the origin where the axes cross and positive y numbers are above the
x-axis. _Computer coordinates_ have (0,0) in the upper left corner and
positive y means "down".

1. You are making a viewing window that ranges from x=-300 to x=500 and
from y=-200 to y=600.

2. Write three check-expects for the function `x-people`, which takes in a computer x-coordinate and produces a "people" x-coordinate.

3. Write three check-expects for the function `y-computer`, which takes in a people y-coordinate and produces a "computer" y-coordinate.

3. Write the functions `x-people` and `y-computer`. Make sure
they pass your tests.

4. Write the functions `x-computer` and `y-people` that are the
   inverse of `x-people` and `y-computer`, just in case you need
   them... be sure to test.

5. Make a model t goes from 0 to 628 repeatedly. You will need to
   write a draw handler and a tick handler. The equations below give
   the x and y people coordinates to use to place the model.

            x-people-func = (* 250 (cos (/ t 100)))
            y-people-func = (* 150 (sin (/ t 100)))


## Information Flow
This program works a little differently from the previous one. Keep in
mind what information you have in your model and what you need in
order to plot the result.

{{< mermaid >}}
graph TD;
   A[model=t] --> x-people
   A --> y-people
   x-people --> x-computer
   y-people --> y-computer
{{< /mermaid >}}
