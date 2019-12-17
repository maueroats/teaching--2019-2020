---
title: "15. Heatmap"
date: 2018-12-19T20:54:29-06:00
weight: 65
draft: false
#type: slide
#theme: white
description: "Using cond to create a multi-segment heat map. Applying it to the graphing review."
---

The figure below is 100 pixels wide and 300 pixels tall. Each 100
pixel color segment is a color gradient.

{{% figure src="heatmap.png" %}}

|  y-coord | color | color value |
|----------|-------|-------------|
|   0      | blue  |   125       |
|  99      | blue  |   224       |
| 100      | green |   125       |
| 199      | green |   224       |
| 200      | red   |   125       |
| 300      | red   |   225       |

For example, when y=150, the color produced is `(make-color 0 175 0)`
because the color is supposed to be green when y is between 100 and 199.

1. Write a function `heat-color: number(y) -> color` that produces the
   correct color.

2. Write a function `color-helper: number(x) number(y) -> color` that
   just calls the `heat-color` function to get the correct color.
   
3. Use `build-image` to create the 100x300 rectangle pictured above.

4. **Challenge**. Modify your work on the [graphing review]({{% relref
   "15-graphing-review" %}}) so that the background is colored based
   on the distance a point (x,y) is from the graph of y=f(x). 

    {{% figure src="vivrant.png" %}}


## Sketch of the challenge solution

1. The idea is to use the `heat-color` function that we wrote earlier.

		(define (color-outline-1 xc yc)
		  (heat-color (- yc (f xc)))

    Unfortunately, `xc` is in computer coordinates, but `f` works only in
    people coordinates, so we need to add our conversion functions.

2. Change the use of `f` to the `fc` version that works in computer coordinates.

		(define (fc x)
		  (yptyc (f (xctxp x))))))
			  
3. Sometimes we get negative values and decimals, so add a `fixer` and
   use it in the `color-outline` function to fix the input to `heat-color`.

        (define (fixer v)
		  (real->int (abs v)))
		  
4. For more vivrant colors, multiply by two in the fixer (or modify the `heat-color` function).

