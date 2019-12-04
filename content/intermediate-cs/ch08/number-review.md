---
title: "Number Model Review"
date: 2017-10-31T14:31:08-05:00
draft: false
weight: 50
#type: slide
#theme: white
description: "A summary of the key points of Chapters 7-8. Preparation for a test."
---

Things to know:

1. Animation following the graph of an equation:
     - Computer coordinates
     - People coordinates

2. Repetition using `remainder`.

3. Max/min to keep values large/small.

4. Randomness
     - Range of random numbers (e.g., 10<=x<=50).
     - Write and test a non-random function first.

5. Write checks for a function that you do not yet know how to write.


Terms: 

- Computer coordinates: (0,0) in the upper left, positive y going down.
- People coordinates: (0,0) in the center, positive y going up.

Sample code:

- [People coordinates demo](people-coordinates-demo.rkt)

## Review Problems

1. Make a sunset: a half circle. 
    - shrinks in radius
    - changes color from red(ish) to black as the sun sets. 
(Advanced: yellow to magenta.)

2. Make a point that follows the graph of the equation y=((x-50)/10)^2
    - Use "people coordinates". Each quadrant should be 75x100.
    - Move from x=-75 to x=75 in people coordinates.
    - Repeats the path from over and over.
    - Hit a key make the point go to x=0 people coordinates (and start moving).
    - Move the mouse to make the point move. (The point should seem to move faster when you move the mouse.)

3. Make a rectangle that is three times as wide as it is tall.
    - Height is determined by y-coordinate of the mouse.
    - Height decreases 5 units every time you hit a key.
    - Height cannot go below 20 units using key.
    - Height cannot go above 150 units using mouse.
    - You choose the color.
     (Advanced: color of grey depends on y-coordinate.)

4. (Maybe omit.) (... feel free to skip.) 
    Make a line that you can move up and down with the mouse. 
    - Straight line through x=0, y=70
    - Passes through the point where the mouse is sitting.


## Information Flow for Question 2

{{< mermaid >}}
graph LR;
   A[x-computer] --> B[x-people]
   B --> |func| C[y-people]
   C --> D[y-computer]
{{< /mermaid >}}
