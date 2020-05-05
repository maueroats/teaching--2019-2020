---
title: "Treasure Hunt"
date: 2019-02-15T11:10:02-06:00
weight: 65
draft: false
#type: slide
#theme: white
description: "A treasure hunt with a door you cannot pass and loot to win."
---

* Get a key (disappears when you have it).
* Door opens when touched after have the key.
* Win when you get the money.
* Cannot walk through door or walls.

{{< figure src="treasure-hunt.png" >}}

## Common Misunderstandings

These statements are the way the game _should_ work.

* The door does not open immediately when you get the key, you need to
  walk over and touch the door to open it.

* Door is always visible! 

* Cannot get treasure without getting past door.
  
## Hints

If your sprite gets stuck trying once it hits a wall, make it so you
can actually move in one direction even while you are touching the
wall. Example:

{{< scratch >}}
when [d v] key pressed
  forever 
    if < touching color (black) > then
      point in direction (-90)
      move (5) steps
    else 
      point in direction (90)
      move (5) steps
    end
{{< /scratch >}}
