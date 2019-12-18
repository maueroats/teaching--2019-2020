---
title: "13. Intro Exercises 1"
date: 2019-12-17T09:32:52-06:00
weight: 110
draft: false
#type: slide
#theme: white
---

1. What is wrong with this code?

```racket
;; hit-snooze?: boolean number -> boolean
(define (hit-snooze? sleepy? time)
  (and (boolean=? sleepy? "true")
       (> time 700)))
```

2. Simplify or explain and correct the error.

    * `(boolean=? (> 17 24) #false)`
    * `(boolean=? (= 1 1) "true")`
    * `(boolean=? practiced-piano? true)`
    * `(boolean=? hungry? false)`
    
3. Sometimes you get to sleep a lot (return true). That happens if you
   did not have homework, did not do the homework you have, or the
   homework was easy.
   
       Write a function to figure out if you slept a lot.
   
   ```racket
   (define (slept-lots? had-hw? did-hw? was-easy?)
      ...)
   ```

4. (Shape Sorter I.) Write `fit-rect?: image -> boolean` that returns
   true if the image fits inside a 150x100 rectangle.
   
5. (Shape Sorter II.) Write `ibr?: image -> boolean` that returns true
   if the image is a (pure) blue rectangle.

