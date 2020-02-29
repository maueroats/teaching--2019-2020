---
title: "Bumper Two Player"
date: 2019-05-20T14:16:46-05:00
weight: 120
draft: false
#type: slide
#theme: white
description: "Conversion from one player to two player bumper boats."
---

First, a confession: we don't actually make the boats bump each
other. We needed to finish the discussion in one day, so we did not
add any physics that wasn't present in the one-player version.

{{< alert success >}}
{{< attachments title="Racket Code" pattern=".*\.rkt$" />}}
{{< /alert >}}

## One Player Review

The one player code does the following:

* Bounce off walls 
* Clicking sets velocity to be toward click at 5 units/tick
* `w` / `s` keys make the radius increase / decrease by 5 units.
* `j` / `k` keys make the speed decrease / increase by 10%.
* `c` gives a new random color

Requiring `bumper-boats-single.rkt` gives the following functions:


* `WIDTH`, `HEIGHT` of the screen
* `tick-h`
* `mouse-h`
* `key-h`
* `draw-1-fancy: Boat -> Image`: Render one boat, ready to place.
* `Boat`: the boat structure
        
```racket
(define-struct boat ([id : Integer] [name : String]
                     [pos : Posn]  [vel : Posn]
                     [color : Color]
                     [radius : Positive-Integer])
```

## Two Player Conversion

The `Game` structure was a number to keep track of whose turn it is
and two `Boat` structures, one for each player. Require the one player
file so the old functions are available.

```
(require "bumper-boats.single.rkt")
```

* Draw-Handler:
Place the results from `draw-1-fancy` of each player's boat.
* Key-Handler:
Determine whose turn it is, and replace that boat with the results of
running the one-player key handler on that boat. Update whose turn it
is.
* Tick-Handler: 
Update both boats simultaneously.
* Mouse-Handler:
Like the key handler.

