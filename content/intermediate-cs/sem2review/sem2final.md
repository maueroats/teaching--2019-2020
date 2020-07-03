---
title: "Sem.II Final"
date: 2020-06-10T07:00:43-05:00
#weight: 
draft: false
#type: slide
#theme: white
---

You may use the Picturing Programs book and the Racket Help Desk. You
may not use your old work. Please do not discuss this test with other people
until after 1:30pm on the day of the exam.

At the last minute, I renumbered the questions, moving question 1 to
become question 4. Sorry if there are editing mistakes.

## 1. Signatures

{{% notice info %}}
MODEL: `tstm`

- `p`: a posn with number coordinates, like `(make-posn 3 4)`
- `n`: a number, like `5`
- `c`: a color string, like `"red"`
- `ell`: a list of numbers, like `(list 8 15 20 21)`

```racket
(define-struct tstm (p n c ell))
```
{{% /notice %}}

In this section all models are assumed and required to have their
parts with the correct types above. You do not need to check that
models you are given are correct, and models you produce must also
have the correct types in each spot.

1a. Give a signature for this function

```racket
(define (mystery-1a g h)
  (make-tstm (make-posn 5 g)
             (sqrt g)
             h
             empty))
```

1b. Give a signature for this function

```racket
(define (mystery-1b t)
  (cond [(empty? (tstm-ell t))
         (tstm-p t)]
        [else
         (make-posn (tstm-n t)
                    (string-length (tstm-c t)))]))
```

## 2. Structures

Using the same structure `tstm` from above, write a function to be
used as a tick handler - add 1 to the number in the model.

There are check-expects in the provided starter code.

```racket
(define (tstm-tick model)
  model)
```

## 3. Quality Design


In this section, the model needs to represent a position, speed, and score.
For example: point=(40,75), speed=10, score=13.

Two different students "argh" and "oof" present different possible models.

```racket
(define ex-argh (make-posn (make-posn 40 75)
                           (make-posn 10 13)))
(define ex-oof (make-posn 13
                          (make-posn 10
                                     (make-posn 40 75))))
```

3a. Neither one of these is correct. Write the same example 
doing what they should be doing.
     Call your approach `good`.

3b. Write two functions to translate from the argh method to the oof method
     using your good method.

```racket
(define (argh->good a)
  "todo")
(define (good->oof g)
  "fixme")
```


## 4. Check-Expects

The `in-triangle?` function takes in four posns: the first three
specify corners of a triangle, and the fourth one is a point
`Q`. The function returns true if `Q` is in the triangle made by connecting
the other three points, and false otherwise. (On the edge counts as in.)
   
Write *three* good check-expects for this function. Do
not write the actual function. You check expects should cover a
range of possible mistakes in the bad function given: 
   
   - bad function gives correct answer true
   - bad function gives correct answer false
   - bad function gives true but correct answer is false

Draw a picture and/or explain in words why the answers you give
for the checks are correct.
   
```racket
(define (in-triangle? p1 p2 p3 q) ;; BAD!
  (and (<= (posn-x p1) (posn-x q) (posn-x p3))
       (<= (posn-y p1) (posn-y q) (posn-y p2))))
```

Common questions: 

* Does on the edge of the triangle count as "in" it? Yes.
* Is the given `in-triangle?` function supposed pass all of the
  check-expects that I write? NO. Checks are written based on the
  purpose statement, not what the function actually does. The third
  bullet point above means you should have one failing check.

## 5. Lists

Use the same `tstm` from question 1 above.

In this section you are writing a function `in-tol` that takes in a
`tstm` and a `tolerance` number. Return all of the numbers from the `ell`
part of `tstm` that are within `tolerance` of the `n` part

Of course you may use helper functions.

There are check-expects in the starter code provided. 

Example: when the model is
```racket
(make-tstm (make-posn 1 2) 18 "red"
           (list 13 14 21 22 23))
```
and the tolerance is 4, your function should output the `(list 14
21 22)` because those numbers from the list are within 4 of 18. Notice
that the tolerance is from -4 to +4!

```racket
(define (in-tol model tolerance)
  empty)
```
