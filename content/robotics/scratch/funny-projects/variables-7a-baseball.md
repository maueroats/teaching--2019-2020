---
title: "Running Bases"
date: 2019-02-14T10:30:07-06:00
weight: 70
draft: false
#type: slide
#theme: white
description: "Baseball that catches you if you cheat."
---

In the game of baseball, the batter hits the ball and then tries to
touch all four bases, in order, before being tagged out. We will not
do anything with the hitting the ball, just running the bases.

* Goal: move to base 1, 2, 3, and home (base 4). 
* You are a cheater if you try to skip a base. Lose in that case.
* You win when you get to home.
* When the green flag is clicked, pick a random number from 1
  to 5. That number is the base you get "out" at. (If the number is 5
  you score.)
* Reset to start at base 0 when the green flag is clicked.
  
## Class discussion

We talked about what variables you should use, and what they mean. 
The most important variable is `last base I got to`.

We talked about what the code should look like for base 1. 
There was an "if-then" block with different choices:

* the `last base I got to` is the one right before the base (zero):
  set the `last base I got to` to current base (1).
  
* the `last base I got to` is more than 1: cheater, can't go back so
  broadcast "Cheater"
  

## Details

One way to lose is have a stage backdrop that says "Cheater".
{{< scratch >}}
when I receive [Cheater v]
  switch backdrop to [Cheater v]
  stop [all scripts v]
{{< /scratch >}}
