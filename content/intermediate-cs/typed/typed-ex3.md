---
title: "Typed Exercises 3"
date: 2019-05-09T07:24:49-05:00
weight: 70
draft: false
#type: slide
#theme: white
description: "Exercises to practice using structures in Typed Racket."
---

1. Create a game structure that has a player `name`, a `location` Posn,
   and a Boolean variable for `horizontal?`. You can abbreviate field names. 
   
2. Write a draw handler that draws a rectangle with the player's name
   inside of it (you pick a size) and then potentially rotates it 90
   degrees if `horizontal?` is false.

3. Write a key handler that flips the image from horizontal to
   vertical when you hit space.
   
3. Add to your key handler so any other (length 1) key that is hit is
   added to the end of the existing name. Advanced: make backspace work.

4. Write a mouse handler that changes the location of the image when
   you click.
   
5. Make a `big-bang` to animate this action.

