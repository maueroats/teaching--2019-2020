---
title: "Checkers Legal Moves"
date: 2019-05-22T09:14:58-05:00
weight: 30
draft: false
#type: slide
#theme: white
description: "Allowing only legal moves is the most complex part of checkers."
---

The `legal-move?` function has the purpose of determining whether or
not a move is legal. This function needs to know the current game
state (which includes the currently selected piece) and the position
where the player is considering moving that piece.

    legal-move? : Game Posn -> Boolean
    
This function is complex, so we break it up into many smaller, simpler
functions. 

* `on-board? : Posn -> Boolean`: True if the position is on the
  board.
* `direction-ok? : Piece Posn -> Boolean`: This function just makes
  sure that ordinary pieces only move the direction they start.
* `space-empty?: (Listof Piece) Posn -> Boolean`: Is the given square
  empty? 
* `distance-nonjump-ok?: Posn Posn -> Boolean`: Assuming the move is
  not a jump, is it ok?
* `distance-jump-ok?: Posn Posn -> Boolean`: Assuming the move is a
  jump, is the distance intended going to be ok?
* `get-piece: (Listof Piece) Posn -> Piece`: Get the piece at the
  given position. Define a fake NO-PIECE to be a piece at (-1000,1000)
  to represent not finding a piece there. 
* `is-legal-to-jump?: (Listof Piece) Player Posn Posn -> Boolean`:
  Knowing where the pieces are on the board and who is attempting the
  move, is the attempted jump legal? For example, jumping an opponent
  is ok, but jumping your own piece or an empty square is
  forbidden. Plan to figure out some helper functions for this on your own!

## Examples

Each function needs several check-expects before you start to write
the function. Do not start to write a function without a _purpose_ and
at least _two checks_.

### on-board

On board just makes sure the position is on the board... My board
squares are numbered 0 through 7.

```racket
(check-expect (on-board? (make-posn -10 5)) false)
(check-expect (on-board? (make-posn 2 7)) true)
(check-expect (on-board? (make-posn 3 8)) false)
```

### direction-ok

We need to write check-expects for direction. First, we need to decide
which direction each player will move. I decided that player 1 will
move down the board (increasing y) and player 2 will move up
(decreasing y).

The possibilities are:

1. king can move either direction
2. player 1 can only move "down" the board
2. player 2 can only move "up" the board

```racket
(check-expect (direction-ok? (make-piece (make-posn 1 3) 1 false)
                             (make-posn 1 2))
              false)
(check-expect (direction-ok? (make-piece (make-posn 1 3) 1 false)
                             (make-posn 2 4))
              true)
(check-expect (direction-ok? (make-piece (make-posn 1 3) 2 false)
                             (make-posn 2 4))
              false)
(check-expect (direction-ok? (make-piece (make-posn 1 3) 2 false)
                             (make-posn 0 2))
              true)
(check-expect (direction-ok? (make-piece (make-posn 1 3) 2 true)
                             (make-posn 2 4))
              true)
(check-expect (direction-ok? (make-piece (make-posn 1 3) 1 true)
                             (make-posn 0 4))
              true)
```

### space-empty

The `space-empty?` function should find out if a space is empty.

```racket
(define ex-pieces (list (make-piece (make-posn 1 3) 1 true)
                        (make-piece (make-posn 2 4) 2 false)
                        (make-piece (make-posn 3 5) 1 false)))
(check-expect (space-empty? ex-pieces (make-posn 1 3))
              false)
(check-expect (space-empty? ex-pieces (make-posn 3 1))
              true)
(check-expect (space-empty? ex-pieces (make-posn 2 4))
              false)
(check-expect (space-empty? ex-pieces (make-posn 3 5))
              false)
```

### distance-nonjump-ok

The `distance-nonjump-ok?` function takes two positions and determines
if the distance between them is allowed given that the move is not a
jump.

```racket
(check-expect (distance-nonjump-ok? (make-posn 1 3) 
                                    (make-posn 2 4))
               true)
(check-expect (distance-nonjump-ok? (make-posn 1 3) 
                                    (make-posn 0 4)) 
               true)
(check-expect (distance-nonjump-ok? (make-posn 1 3) 
                                    (make-posn 2 2))
               true)
(check-expect (distance-nonjump-ok? (make-posn 1 3) 
                                    (make-posn 0 2))
               true)
(check-expect (distance-nonjump-ok? (make-posn 1 3)
                                    (make-posn 1 4))
               false)
(check-expect (distance-nonjump-ok? (make-posn 1 3) 
                                    (make-posn 2 3))
               false)
```

### distance-jump-ok

The `distance-jump-ok?` function returns true when the two positions
differ by enough that there is exactly one diagonal square between
them.

You should write your own checks for this function.

### is-legal-to-jump

The `is-legal-to-jump?` determines if the square that is being jumped
over is occupied by the correct kind of piece.

