---
title: "Bumper Cars"
date: 2019-05-16T13:21:40-05:00
weight: 110
draft: false
#type: slide
#theme: white
---

## Game struct

For bumper boats, we want a struct that contains:

* id
* name
* position
* velocity
* radius
* color

## Draw handler

For one player bumper cars, just draw the single car (circle) in the
right color, with the name shown in the middle of it.

## Tick handler

Update the position, adding the velocity.

## Mouse handler

Change the velocity so that the circle moves towards the mouse click
with a speed of 10.

## Bounce off walls

### Decide new velocity for a bounce

Work out bouncing off horizontal and vertical walls separately.

### Decide if you should bounce

A circle should bounce if it is on a wall and the velocity is moving
toward the wall.

