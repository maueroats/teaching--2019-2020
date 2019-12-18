---
title: "13. Intro Exercises 2"
date: 2019-12-18T10:09:41-06:00
weight: 120
draft: false
#type: slide
#theme: white
---

1. Simplify, explain and correct errors if needed.

    * `(and (< x 10) (> x 3) (< x 12))`
    * `(or (= 0 1) (< 15 8) (string=? "dog" "DOG"))`
    * `(not (= (+ 1 3 7 9) (+ 2 4 6 8)))`
    * `(boolean=? (or (boolean=? lunchtime? true)
                     study-hall?)
                  false)`


2. What does this function do? Is there any possibility of an error.

```racket
(define (mystery n)
  (or (= n 0) 
      (< 15 (/ 100 n))))
```

3. The `lucky-charm? : image -> boolean`. Give true if the image
matches `pic:unicorn` (you can pick this image) or an orange star (of
any size). Write some check-expects first!





