---
title: "20. Intro Ex 1"
date: 2020-01-23T09:21:34-06:00
#weight: 
draft: false
#type: slide
#theme: white
---

1. Write a function `f1` that takes in a posn and gives the slope of
 the line through (0,0) and the posn.
 
        f1 : posn -> number
 
2. Write a function `f2?` that takes in two posns each being 
   (change in x,
   change in y) and returns true if they represent slopes of
   perpendicular lines.
        
        f2? : posn posn -> boolean
        
3. Write `f3?` that determines if a posn is on a line given in
   `y=mx+b` form. 
   
        f3?: number(m) number(b) posn -> boolean
        
4. Write a function `unitv` that takes in a posn and puts out
   the posn with each coordinate divided by the distance the input
   posn is from the origin.
   
        unitv : posn -> posn
        
        
