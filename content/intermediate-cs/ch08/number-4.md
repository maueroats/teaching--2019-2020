---
title: "Number Models 4"
date: 2017-10-31T10:15:38-05:00
draft: false
weight: 40
#type: slide
#theme: white
---

* How to show a number in an image:
    - (number->string 50) makes "50"
    - (text ...) wrapped around that makes an image

    Example: `(text (number->string 50) FONT-SIZE "purple")` produces an image with the number 50 in FONT-SIZE point purple font.

* Make a dot follow the line y=2x-30 from x=0 to x=100. Repeat over from x=0 once the dot gets to 100.

* Draw a random radius circle (10<=r<=100) on the screen. Show the radius inside the circle.
    
    Writing check-expects is key to making this work!

{{< figure src="circle-50.png" >}}

* Make an animation of a point moving along the right-opening parabola x=y^2. The point should hit (0,0), (25,5), (100,10), (225,15), and (400,20) before repeating. The draw handler can be a little tricky too - make sure you test it so you know it works.

* Challenge: can you make the point hit (100,-10), (25,-5), (0,0), (25,5), and (100,10) instead? 
