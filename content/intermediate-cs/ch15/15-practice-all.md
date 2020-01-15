---
title: "15. Practice All"
date: 2020-01-15T10:06:15-06:00
#weight: 
draft: false
#type: slide
#theme: white
---

Do all of this work in a single Racket file. You **need to turn this
assignment in** on classroom. You may attach your solution file or
copy and paste the code as a _private_ comment and mark the assignment
complete.

Read Section 15.6 (Unnecessary conditionals) to review how to
simplify. (PDF page 230ff.)

Note to book readers: I disagree with the author about section 15.7
(nested conditionals) so I suggest not reading it. If you need to put
conditionals inside of conditionals, make a helper function.

1. Simplify:

```racket
(define (mess-1 in-bed? alarm-time clock-time)
  (cond [(boolean=? in-bed? true)
         (cond [(< clock-time alarm-time)
                "sleep"]
               [else
                "wake up"])]
        [(boolean=? in-bed? false)
         "wake up"]))
```

2. Simplify:

```racket
(define (ice-danger? temp precipitation? salt?)
  (and (boolean=? true precipitation?)
       (boolean=? false salt?)
       (not (>= temp 32))))
```

3. Book problem 15.5.1, page 218 (pdf page 229): `carpet-price`.
4. Book problem 15.5.2, page 218 (pdf page 229):
   `digital-thermometer`.
   
5. Book problem 15.5.4 (`who-won`) and 15.5.5 (`4-votes->winner`),
   page 219 (pdf page 230).
   
6. There are three circles of radius 150 drawn on a 500x500
   background. The centers are red (250,325), green (175,175), and
   blue (325,175). Make the area where circles overlap have all of the
   colors from the circles, so where red and green overlap the color
   is (make-color 255 255 0).

    {{% figure src="three-circ.png" width="200" %}}
