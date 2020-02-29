---
title: "22a. Fibonacci"
date: 2018-02-26T11:49:56-06:00
weight: 30
draft: false
type: slide
theme: white
description: "Introduction to recursion using Fibonacci numbers."
---

## Fibonacci

1,1,2,3,5,8,...

1. What are next three?
2. How to number them?

---

## Fibonacci 

|n|0|1|2|3|4|5|6|
|-|-|-|-|-|-|-|-|
|fib(n)|1|1|2|3|5|8|13|

fib(8) = ?

---

## Fibonacci

Where does it start?

`fib(0) = 1`

`fib(1) = 1`

Pattern?

`fib(102) = ?`

--- 

## Fibonacci

Write the function `(fib n)`.

Use a conditional.

---

## Fibonacci

```racket
(define (fib n)
  (cond [(= n 0) 1]
        [(= n 1) 1]
        [else ... ]))
```
---
