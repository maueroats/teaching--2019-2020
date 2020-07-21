---
title: "Reversi Details"
date: 2020-06-17T11:58:07-05:00
weight: 20
draft: false
#type: slide
#theme: white
description: "Detailed information on my implementation of Reversi. This could help you but is not necessary to read - you can build it from scratch yourself."
---

The big picture plan is to keep a list of pieces, which includes where
they are on the board. That is, each Piece is a struct containing a
Posn for the location and a Player to represent which color it is
(traditionally white and black, 1 and 0).

In Reversi, a play flips every one of the opponents pieces that is on
a straight line (in one of the 8 main directions) between the new
piece and another piece of the same color. Applying this rule in a
particular direction is a major part of the game implementation (also
a major difficulty). 

A play in Reversi must cause at least one piece to flip. From the
programming point of view, you can add in this restriction after you
have a piece flipping mechanic.

## Weird Capitalization

The unusual capitalization in this document comes from Typed Racket,
where types of things are capitalized. For example, the type of
`(make-posn 5 12)` is `Posn`. 

## Basic Definitions

* Player: number, 0 or 1
* Piece: a struct containing a player and a posn
* Game: 

    + pieces - list of pieces
    + active - current player
    + hover - a posn I use to show what will flip (optional)
* `DIRECTIONS`: A list of positions containing eight Posns like `(make-posn
  1 -1)`, one for each of the directions along which flipping can occur.

Note: I use `Pieces` to denote the type `(Listof Piece)`.
 

## Helpers: Struct Updating

These are all straightforward. A single test to make sure they work is
all that you need.

* update-pieces: Game Pieces -> Game: Copy the game struct, replacing
  the old value of `pieces` with the second argument to the function.
* update-hover: Game Posn -> Game: Copy the game struct, replacing the
  old value of `hover` with the second argument to the function.
* switch-active: Game -> Game
* flip : Piece -> Piece
* opponent : Player -> Player

## Essential Utility

A function to get the piece at a given posn will help you keep your
sanity. If the square is unoccupied, the function should return false.

    get-piece/posn : Pieces Posn -> Piece or false 


## Troublesome: End of Flip

I found the trickiest part to be figuring out where the flip should
stop. 

   
    end-of-flip: Pieces Posn(start) Posn(direction) Player(who) 
                 -> Posn or false.
  
  Beginning at start and going in direction, make sure there is 
  at least one opponent of the player who, then find the posn of the
  next piece belonging to "who". Returns false if the search hits a
  blank square or if there are no opponents before the first piece
  belonging to player "who". You might consider a helper function to
  be called once you find at least one opponent.

    end-of-flip-help: Pieces Posn(start) Posn(direction) 
                      Player(who) 
                      -> Posn or false
    
  
## Troublesome: Between-ness

The method I used to update the board was to keep a list of all of the
posns that would end a flip, then flip a piece if it was between the
start and any of those ending spots. 

This method requires that I be able to tell whether a posn is in
between two other posns on the board. The math would have been a _lot_
easier if I had remembered the starting spot, the ending spot, and the direction I
used to get there. You can write a function to compute the direction
if you want, or remember it.

    
    direction: Posn(start) Posn(end) -> Posn
    between?: Posn(start) Posn(end) Posn(direction) Posn(p) -> Boolean

Carefully test this function - including with `p` in the same
direction as `end`, but just farther (in which case it should return false).

    (check-expect (between? (make-posn 0 0) (make-posn 3 3) (make-posn 1 1)) true)
    (check-expect (between? (make-posn 0 0) (make-posn 3 -3) (make-posn 4 -4)) false)
