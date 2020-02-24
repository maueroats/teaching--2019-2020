---
title: "22a. Recursive Helpers"
date: 2018-02-28T13:58:50-06:00
weight: 70
draft: false
#type: slide
#theme: white
description: "Exercises involving recursive functions with helper functions."
---

## Image Theory

1. `big-bullseye`: number(n) -> image. Draw n concentric circles, alternating color beginning with black on the inside. Begin with a radius of 10 and increase the radius by 10 each successive circle.

2. `sier-triangle`: number(n) number(size) -> image. Make a [Sierpinski triangle](https://en.wikipedia.org/wiki/Sierpi%C5%84ski_gasket) with `n` stages in the pattern and a side length of `size`. Do this by dividing the size in two when you make a smaller triangle, and arrange those triangles themselves in a triangle (see images).

{{< figure src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Sierpinski_triangle_evolution.svg/320px-Sierpinski_triangle_evolution.svg.png" >}}

(Remaining content moved to a [later helper function page]({{% relref "90-helpers.md" %}}).)
