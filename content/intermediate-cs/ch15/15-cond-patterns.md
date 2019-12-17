---
title: "15. Cond Patterns"
date: 2018-12-17T14:16:14-06:00
weight: 20
draft: false
#type: slide
#theme: white
description: "Patterns with conditionals and build-image."
---

Do all exercises with `build-image`. Use a width of 600 and a height
of 500. The exercises build in complexity - if you
can do the earlier ones, go on to the later ones.

1. Solid red circle, center (100,200), radius 75. Background white.

2. Two circles in the same image:

    * Solid red circle, center (100,200), radius 75.
    * Solid blue curcle, center (300,200), radius 85.

3. Two overlapping circles, overlapping part is purple:

    * Solid red circle, center (225,200), radius 75.
    * Solid blue curcle, center (300,200), radius 100.
    * Overlapping parts purple.
    * Everything else white.

    {{% figure src="two-overlapping-circles.png" %}}


4. Shrink the circles and add another layer.

    * Red: center (225,200), radius 50.
    * Blue: center (300,200), radius 75.
    * Purple: overlap between red and blue.
    * Pink: center (225,200), radius 100.
    * Light blue: center (300,200), radius 125.

    {{% figure src="circle-pattern-2.png" %}}
    
5. Make the pattern repeat using `remainder`. You may want to modify
   it so that the pink and blue overlapping area is another color.
   
   
