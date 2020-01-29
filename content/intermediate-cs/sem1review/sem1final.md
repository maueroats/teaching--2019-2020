---
title: "Sem.I Final Exam"
date: 2020-01-29T07:26:35-06:00
weight: 90
draft: true
#type: slide
#theme: white
---

1. Using the code below, explain:

    (a) Is `posn` a reasonable model for this animation? Explain why
    or why not.
    
    
    (b) Write a reasonable signature for `mouse-1`. Specify the actual
    type of everything for this question, don't just say "x".
    
    (c) Write a good check-expect showing that you know what `mouse-1`
    does. 
    

```racket
(define (mouse-1 a b c d)
  (cond [(string=? d "button-down")
         (- b 10)]
        [(string=? d "drag")
         (- c 50)]
        [else
         (+ a b c)]))
(define (draw-h x)
  (place-image (circle 10 "solid" "red")
               x (- 400 x)
               (empty-scene 600 400)))
(big-bang 200
  (on-draw draw-h)
  (on-mouse mouse-1))
```


2. The function Nate wants to use as his key handler has the signature
   `nate-k: posn -> posn`, and it is supposed to increase the `y`
   coordinate by 10 and edcrease the `x` coordinate by 1.
   
```racket
```

(a) Nate is having trouble making his code work. He currently has the
following code and check-expect. The coding process is supposed to
begin with writing check-expects. The first step to helping him is to
decide whether his check-expect is correct, and fix it if it is
wrong. Explain your reasoning in a few words.

```racket
(define (nate-k p)
    (make-posn (posn-y p) (- (posn-x p) 11)))
(check-expect (nate-k (make-posn 51 40))
              (make-posn 40 30))
```


(b) Could the `nate-k` function be used as a key handler (regardless
of what it actually does)? Explain.


