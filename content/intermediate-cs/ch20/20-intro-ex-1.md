---
title: "20. Intro Ex 1"
date: 2020-01-23T09:21:34-06:00
#weight: 
draft: false
#type: slide
#theme: white
---

1. Write a function `slope-posn` that takes in a posn and 
   gives the slope of
   the line through (0,0) and the posn.
 
        slope-posn : posn -> number
 
2. Write a function `perp?` that takes in two posns each being 
   (change in x,
   change in y) - like above - and returns true if they represent
   slopes of perpendicular lines.
        
        perp? : posn posn -> boolean
        
3. Write `on-line?` that determines if a posn is on a line given in
   `y=mx+b` form. 
   
        on-line?: number(m) number(b) posn -> boolean
        
4. Write a function `unitv` that takes in a posn and puts out
   the posn with each coordinate divided by the distance the input
   posn is from the origin.
   
        unitv : posn -> posn
        
        
## Check Expects

```racket
(check-expect (slope-posn (make-posn 8 15)) 8/15)
(check-expect (perp? (make-posn 3 4) (make-posn 4 -3)) true)
(check-expect (perp? (make-posn 3 4) (make-posn 6 8)) false)
(check-expect (on-line? 5 3 (make-posn 4 23)) true)
(check-expect (on-line? 2 10 (make-posn 5 21)) false)
(check-expect (unitv (make-posn 3 4)) (make-posn 3/5 4/5))
(check-expect (unitv (make-posn 5 12)) (make-posn 5/13 12/13))
```
