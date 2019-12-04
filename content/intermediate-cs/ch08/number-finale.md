---
title: "8. Number Finale"
date: 2018-12-02T23:37:17-06:00
weight: 90
draft: false
#type: slide
#theme: white
description: "This is the last graphing practice. It should be easier now that you have done all of the other ones. Do it before the project for 'scaffolding'."
---

{{% use-mathjax %}}

We are going to make this graph:

{{% figure src="warmup-graph.png" %}}

The equation we are using is:

	(define (func x)
	  (* (- x 5)
	     (+ x 2)
	     (- x 7)))


The range of people coordinates we want to graph is:
$$-5 \le x \le 7 $$
$$-400 \le y \le 100 $$

Your want to make the graph have dimensions 360x250 (in computer
coordinates).

1. Write two checks for the function `x-computer->x-people` that
   takes in a computer coordinate and puts out a people coordinate.
   
2. Possibly using [WolframAlpha](https://www.wolframalpha.com/), write
   the function `x-computer->x-people`.
   
3. Write two checks for the function `y-people->y-computer`.

4. Write and test the function `y-people->y-computer`.

5. Check your work.

        (check-expect (x-computer->x-people 150) 0)
		(check-expect (y-people->y-computer 0) 50)

6. Write a draw handler that will place a dot on the graph of the
   function. The model will be the computer x-coordinate.

7. Design and test a tick handler that will start on the left side of
   the screen, trace the curve to the right side, then repeat.

## Bonus: Graph of the line 

1. Write `rf` (or `real-func`), which takes in a computer x-coordinate, changes
   it to people x-coordinates, applies your function, and then changes
   the result back to computer y-coordinates. You may have already
   written this as part of your animation.
   
2. Use `build-image` to create a 360x250 image where the amount of
   gray at (x,y) is given by limiting
   $$ 100 * \left| y - \text{rf}(x) \right| . $$

3. It took a little extra work to get the axes to show with this method...

{{% figure src="warmup-animated.gif" %}}
