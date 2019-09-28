---
title: "Ch3 A Rule-Based Game"
date: 2019-09-27T17:58:43-05:00
#weight: 
draft: false
#type: slide
#theme: white
---

The game of Craps is played with two dice. Read about [street
craps](https://ourpastimes.com/play-street-craps-4505587.html) but
ignore the betting.

You are going to create a rule-based craps simulator.

You begin with a set of rules. Our rules will be a list of 3-tuples
`(point roll outcome)`:

* `point` is the current point value (0 at the start), 
* `roll` is the current roll, and 
* `outcome` is +1 for a win, -1 for a loss and 0 if the game continues.

For example: `(3 7 -1)` indicates that the rule applies when trying to
get a point of 3, if the current roll is a 7, then the game is lost.

The rules will include a symbol `POINT` which is replaced by the
current value of the point wherever it occurs.

    (POINT POINT 1)



