---
title: "15. Practice Quiz"
date: 2017-12-10T21:55:22-06:00
draft: false
#type: slide
#theme: white
description: "Practice quiz, adapted from a previous year."
---

## Review Concepts

* Design process (as always!). Signature, purpose, examples, function, check-expect. 
Especially plan to use the design process when you can **not** write the function.

* Helper functions as in: `count-votes-4`, `who-won`, `4-votes->winner`.
Note that repeated code is _not_ full credit.

* Decisions based on types of inputs (Section 15.8).

## Quiz Questions

You may not consult any person or any old homework when taking this
quiz. You may consult the book and the Racket Help Desk without citing
them.

1. Write a function short-between? that determines whether a word (string) is short (less than 6 letters) and also is alphabetically between "good luck" and "quiz" (inclusive). Ignore the case of the words. Spaces should get no special treatment just use the built-in behavior.


2. Define a function beautiful-gpa that takes in a grade point average, which is a decimal number between 0.00 and 6.00, and outputs an image of the that GPA number colored according to its value: at least 4.50 is green, 3.5<=gpa<4.5 is orange, 2.5<=gpa<3.5 is purple, 1.5<=gpa<2.5 is red, and below that range is dark magenta. Make sure it prints out cases like a GPA of 3.5 correctly. 


3. The game tryhard.io offers you special in-game abilities that you can buy for in-game diamonds. The long-distance shooter costs 150 diamonds, the super fast speed costs 200 diamonds, and the teleporter costs 400 diamonds. If your subtotal is at least 450 diamonds, you take a 10% discount to find your total. If your subtotal is at least 600 diamonds you take a 20% discount to find your total. (You are only eligible for one discount.) Write a function that takes in three number parameters. These determine how many shooter, speed, and teleporter abilities you purchase. Your function outputs the total cost.

