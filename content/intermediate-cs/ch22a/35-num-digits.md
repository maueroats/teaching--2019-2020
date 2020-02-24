---
title: "22a. Digits"
date: 2018-02-26T12:17:07-06:00
weight: 35
draft: false
type: slide
theme: white
description: "Counting the digits in a number."
---

## number of digits

`num-digits`: whole-number -> number

Returns how many digits in the number.

---

## number of digits

* Use conditional.
* Base: answer of 1 

---

## number of digits

```racket
(define (num-digits n)
  (cond [(< n 10) 1]
        [else ... ]))
```

---

## number of digits

* Use conditional.
* Base: answer of 1 
* Else: one more than ...

---

## number of digits

Trick: 

* `(quotient number 10)` has one fewer digit

---

