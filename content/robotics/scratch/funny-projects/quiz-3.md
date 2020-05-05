---
title: "Quiz 3"
date: 2019-03-01T11:23:29-06:00
weight: 230
draft: true
#type: slide
#theme: white
description: "Quiz focusing on variables."
---

## Baseball

   In baseball, the pitcher throws a ball, the batter tries to hit it,
   and the catcher gets the ball if the batter misses.
   
   - Characters: Pitcher, Catcher, Bat, Ball.
   - Variables: strikes, baseball

  Table of values for the ball:
       
| baseball | meaning                  |
|----------|--------------------------|
|     1    | pitcher has ball         |
|     2    | ball is thrown (pitched) |
|     3    | catcher has ball         |
|     4    | ball was hit by bat (heading toward outfield) |


In the questions below, you will write code for the Ball sprite. In
each question, change the status of the baseball if appropriate.

1. The ball gets hit by the bat. Glide to the "Outfield" sprite and
   change a variable to represent what is happening.

2. Hit "p" for the ball to move as if pitched. It should show and move
   to x:100 y:200. When the pitcher does not have the ball, the ball
   should say "You need me to play!" Update variables as appropriate.
   
3. When a hit ball touches the pitcher, it disappears and one strike
 is recorded. Update variables as appropriate.

## Stair stepping

1. Going up stairs is slow, choppy motion. Move up 5 steps each time
   the "up" key is hit. The stairs on the screen appear to be at 15
   degrees. 
   
2. Moving left is a smooth, quick motion. Move left 5 steps for
   exactly the time during which the "left" key is depressed.

## Pencil Making

Making one pencil requires one wood and one graphite. The main
character can carry a maximum of 5 wood and 100 graphite.

Sprites: main character, rock, tree, pencil.

* Tree: gives the main character one wood every 2 seconds when the
  main character is touching it.
  
* Rock: gives twenty graphite every time that you click on it at the
  same time that the main character is touching the rock.

* Pencil: hitting "p" uses up 1 wood and 1 graphite, and creates 1
  pencil. You need wood and graphite to make a pencil. 
  The pencil disappears after 0.3 seconds but you remember how
  many pencils were made.

* Motion: no need to write code for motion.
* Costumes: omit. 
  
Write the code for everything but the motion.
