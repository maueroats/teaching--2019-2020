---
title: "Number Models 3"
date: 2018-11-26T08:27:25-06:00
draft: false
weight: 30
#type: slide
#theme: white
description: "Remainder to repeat. Random dots."
---
## Remainder warmups

### Opener

Divide 324 by 7. What is the quotient? The remainder?

### Follow-up

When you change 324 to other numbers, what possible remainders can you get? (For example, can you get a remainder of 2 by dividing something by 7? What?)

### Animation

An animation will just count from 0 to 6, then start over again at zero.

Write the model you choose, then checks and a function for the tick handler.

## More animation

Show the numbers (in order): 10, 30, 50, 70, 90, then go back to 10 and repeat.

* Model?
* Tick handler.

## Repetition (without conditionals)

What does this tick-hander do? Write checks for the results when num=0, num=1, and num=4.
```racket
(define (repeat-it num)
    (remainder (+ num 1) 5))
```

## Class practice

1a. Make a shape of your choice start at x=100, y=40, then move to x=100,y=110, then to x=100,y=180, then back to x=100, y=40. The motion should happen every second.

1b. Hit a key to make the shape go to a random one of those three locations.


