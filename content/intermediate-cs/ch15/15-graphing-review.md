---
title: "15. Graphing Review"
date: 2018-12-19T20:32:27-06:00
weight: 60
draft: false
#type: slide
#theme: white
description: "A review of graphing with people and computer coordinates."
---

{{% use-mathjax %}}

The graph of $f(x)=10 \cos(2x)$ is illustrated below in a window $-\pi
\le x \le 2\pi$ and $-15 \le y \le 15$. The graph uses a 400x200 grid
of computer pixels.

{{% figure src="simple-graph.png" %}}

1. Fill in a diagram of what you have and what you need. Draw and
   label arrows for the functions you have or will write.

	| x        | y        |
	|----------|----------|
	|x-people  |y-people  |
	|          |          |
	|x-computer|y-computer|


2. Develop `xctxp`, the function that changes x-computer to x-people.

    * Write a horizontal number line (the x-axis is horizontal) and label it with
both people and computer coordinates. 
	* Write two check-expects.
	* Figure out the formula, possibly using [Wolfram Alpha](https://wolframAlpha.com).

3. Do the same for the y-coordinates. Draw your number line vertical.
   (The y-axis is vertical!)

4. Find the width of each quadrant. Do not be afraid of fractions!

5. Animate a red dot moving along the graph of the function
   $y=f(x)$. Have the motion repeat when the dot reaches the right
   side of the window.
   
    You do not need to show the graph of the function.
   
    {{% figure src="result.gif" %}}
   
   
