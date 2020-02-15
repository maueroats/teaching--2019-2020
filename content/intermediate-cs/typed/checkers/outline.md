---
title: "Checkers Outline"
date: 2019-05-20T07:21:56-05:00
weight: 10
draft: false
#type: slide
#theme: white
description: "An outline of all of the functions you could use to make checkers."
---

The game development process has several steps:

1. [Examples]({{% relref "./model" %}}): write down several examples
   showing different situations 
   that will occur in the game. Make sure you consider all of the
   possiblities. 
   
2. [Model]({{% relref "./model#model-structure" %}}): decide on the model you will use for the game.

3. Draw handler. Show whose move it is as well as drawing the board.

4. [Legal moves]({{% relref "legal-moves" %}}). A very important
   function: determine if a move is legal!

        legal-move?: Game Posn -> Boolean

5. Support functions: we will practice function design (including
   writing check-expects) to make functions we will need.

    * `get-piece: (Listof Piece) Posn -> Piece`: See notes for legal moves.
    * `is-occupied?: (Listof Piece) Posn -> Boolean`
    * `take-piece: (Listof Piece) Posn -> (Listof Piece)`

6. Mouse handler. The logic of interacting with the pieces can be a
   little complex if you want all of the details.

    * `click->board-coord: Posn -> Posn`: Convert from screen
      coordinates to the board coordinates.


7. Problem-solving tips.

    * `exact-floor` takes in a `Real` number x and puts out the greatest `Integer`
      less than or equal to x. Plain `floor` does the same thing, but
      puts out a `Real`.

<!--
    * `inexact->exact` to convert 2.0 to the integer 2.
-->
