---
title: "15 Practice All"
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
(define (mess-1 in-bed? alarm-time time)
  (cond [(boolean=? in-bed true)
         (cond [(< alarm-time time)
                "sleep"]
               [else
                "wake up"])]
        [(boolean=? in-bed false)
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
   
