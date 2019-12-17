---
title: "15. Slides"
date: 2018-12-11T08:52:32-06:00
weight: 10
draft: false
type: slide
theme: white
description: "Day 1 Exercises"
---

# Hurts?

`hurts?: boolean(hit) boolean(hard) -> boolean`

It only hurts if you get hit and the hit was hard.

---

# Care

`care: boolean(injured) number(blood) -> string`

* "ER" if injured with more than 10 blood.
* "Urgent Care" if injured but the amount of blood is between 5 and 10.
* "No" if you are not injured or there is not much blood.

---

# Red-Blue

1. `(red-blue-1 n)` gives "red" if the number is less than 30,
   otherwise "blue".
2. `(red-blue-2 xxx)` gives "red" 30% of the time and "blue" 70% of
   the time.

---

# Mystery Function

```racket
(define (scrunch x)
   (cond [(< x 10)       0]
         [else     (/ x 2)]))
```
Give 3 examples what it does.

---

# Scrunch Sum

* Scrunch three numbers
* Add the result

```racket
(scrunch-three 5 12 40) => 26
```
---

# Word Points

* Each word gets 2 points per letter. 
* Every word earns at least 7 points. 
* Find the total points earned by four words.

```racket
(sum-points "saw" "it" "workhorse" "betadyne") => 48
```
---

## Early Wake-Up

Count the number of people who wake up before `cutoff-time`.

```racket
(early-wake-up cutoff-time 
               person-1-time
               person-2-time
               person-3-time)
 ```
 
 
