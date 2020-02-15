---
title: "Checkers Model"
date: 2019-05-20T10:01:45-05:00
weight: 20
draft: false
#type: slide
#theme: white
description: "Illustrations from class discussion listing situations that should happen in the game."
---

This is the written record of an analysis. You should practice doing
your own analysis of a game, not just copying this one.
<!--more-->

## Examples

Begin with pictures of all of the situations that can come up in the
game. 

Advanced: enthusiastic software designers may want to read about
how [user stories](https://www.alexandercowan.com/best-agile-user-story/)
used in actual software development.

<!-- page 2 of file:: gm convert FILE.pdf[1]  -crop 510x770+20+20 -->

{{% figure src="checkers-planning-1.png" %}}

{{% figure src="checkers-planning-2.png" %}}

## Board Coordinates

We considered human-friendly coordinates, like (1,4) as well as
computer-friendly coordinates like (75, 225). Using computer
coordinates would make it easier to write the draw-handler, but
writing checks would be easier with human coordinates. We chose human
coordinates because checks are important to write.

In this writeup, our board coordinates go from 0 through 7 in each
direction. 

## Piece Structure

* `p`: Posn
* `c`: Player (Integer)
* `king?`: Boolean

## Model Structure

The model keeps track of whose turn it is, where the pieces are, and
which piece (if any) is currently selected and ready to move.

* `turn`: Player (Integer)
* `ps`: (Listof Piece)
* `selected`: Piece

When there is no piece selected, we will put a special piece in the
selected location that could not arise in the game: say a king for
player 3 located at (-1000,1000). 

The fancier way of representing the selected piece is to use the type
[(Option
Piece)](https://docs.racket-lang.org/ts-reference/type-ref.html?q=Option#%28form._%28%28lib._typed-racket%2Fbase-env%2Fbase-types..rkt%29._.Option%29%29),
but that doesn't simplify the rest of the work.


