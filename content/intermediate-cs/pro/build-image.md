---
title: "Build Image"
date: 2017-12-06T09:53:22-06:00
draft: false
weight: 20
#type: slide
#theme: white
description: "Build-image to create images from a formula for the pixel color."
---

You should learn how to use `build-image` to make the pictures in Chapter 15. 

## Advanced: build-image

The [build-image](http://docs.racket-lang.org/picturing-programs/index.html?q=build-image#%28def._%28%28lib._picturing-programs%2Fprivate%2Fmap-image..rkt%29._build-image%29%29) uses a function that specifies the pixel color to create a rectangular image.

The first example is a function that always returns orange, so it makes an orange square:
```racket
(define (pixel-color x y)
  "orange")
(build-image 300 200 pixel-color)
```
Notice that `pixel-color` does not appear in parentheses. The build-image command needs to activate (run) the `pixel-color` function over and over again, so needs to know the name of the function.

The second example is to give different colors in different circumstances. This example uses a mathematical formula to make a nice picture. Try it.
```racket
(define (pixel-color-ii x y)
  (cond [(<= (abs (- y x)) 30)
         "orange"]
        [else 
         "blue"]))
(build-image 300 200 pixel-color-ii)
```
