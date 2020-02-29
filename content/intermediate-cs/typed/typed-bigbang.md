---
title: "Typed Big Bang"
date: 2019-05-06T17:27:31-05:00
weight: 40
draft: false
#type: slide
#theme: white
description: "big-bang works almost exactly the same in Typed Racket. This page explains any differences."
---

Reminder: you need the `2htdp-typed` package installed.

## Differences

* The type of the model must be given in the big-bang. 
* The clause for the draw function is `to-draw` not `on-draw`.
* The last argument to a mouse handler is a `Mouse-Event` but the last
  argument to the key handler is just a `String`.

        (: draw-circle (-> Real Image))
        (define (draw-circle n) (circle n "solid" "blue"))

        (big-bang 5 : Number
          (on-tick add1 0.2)
          (to-draw draw-number 300 200))


## Limitations

As of this writing, the limitations I am aware of are:

* You cannot `stop-with` - you must use a `stop-when` clause in the
  `big-bang`.

