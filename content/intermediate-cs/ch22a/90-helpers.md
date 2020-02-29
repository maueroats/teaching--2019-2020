---
title: "22a. Helpers"
date: 2018-03-06T10:30:29-06:00
weight: 90
draft: false
#type: slide
#theme: white
description: "Real introduction to helper functions in recursion."
---

## Warmup

Write a function `count-div`: number(k) number(n) -> number that gives
1 if k divides n and 0 otherwise.


## Opener

`count-divisors`: positive-integer(n) -> positive-integer. Count how
many integers 1,2,...,n divide the number `n`.

[Count-divisors solution](count-divisors).

## Number Theory


4. `smallest-factor`: positive-integer(n) -> positive-integer. Find the smallest divisor of `n` that is greater than 1.

3. `is-prime?`: positive-integer(n) -> boolean. True if `n` is prime,
   false otherwise.

5. `smallest-prime-factor`: positive-integer(n) -> positive-integer. Find the smallest prime factor of `n`.

## String Practice

`group-3`: string(word) -> string. Insert spaces after every three letters of `word`. Example: `(group-3 "pancake") => "pan cak e"`.

