---
title: "20. Posn Util"
date: 2019-01-08T08:32:15-06:00
draft: false
#type: slide
#theme: white
weight: 10
description: "Utility functions for posns. Accessing functions defined in other files."
---

The functions in 20.5 are all useful later. When you do them, you should 
save them in a file called `posn-util.rkt`. (Please use that name.)

<!--
{{% notice note %}}
You may download [my posn utilities file](posn-util.rkt) if you write your functions on paper instead of typing them.
{{% /notice %}}
-->

The following functions should be in `posn-util.rkt`:

* `posn=?`: posn posn -> boolean. Are both positions exactly the same? (Both corresponding coordinates match.)
* `add-posns`: posn posn -> posn. Add corresponding coordinates.
* `sub-posns`: posn posn -> posn. Subtract corresponding
  coordinates. First minus second.
* `scale-posn`: number posn -> posn. Multiply both coordinates by the
  same number.
* `distance`: posn posn -> number. The distance in the plane between
  the points specified by the two posns.
* `place-image/posn`: image posn image(background) -> image. Purpose:
    Place one image at a given set of coordinates on a given background.
* Anything else you want to have available for re-use. (Maybe from
  physics or trig...)

You should write tests for yourself. You are going to use these
functions for a month, so you do not want any mistakes. If you really
need them, you can see [some tests I wrote](posn-tests.rkt).

## Require and provide

Require loads functions from another file. Provide makes functions available for other files to load.

### Provide
The `provide` command makes functions available for other files to use.
One way to use it is to list all of the functions you want to allow
other files to use:
```racket
(provide add-posns sub-posns scale-posn distance)
```
Sometimes you just want to make every function in the file available. 
There is a shortcut to do that:
```racket
(provide (all-defined-out))
```

### Require

In order to use the functions in another file, you need to `require` that file.
You already know `(require picturing-programs)` but when we use require 
we need to give the whole filename.
```racket
(require "posn-util.rkt")
```

{{% notice warning %}}
You need to save your work in the same folder as your "posn-util.rkt" file, since Racket only looks in the current folder for other files.
{{% /notice %}}
