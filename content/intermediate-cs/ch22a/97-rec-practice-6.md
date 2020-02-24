---
title: "22a. Recursion Practice 6"
date: 2019-02-28T14:01:58-06:00
weight: 97
draft: false
type: slide
theme: white
description: "r-ss - does a word have r or ss?, no-7, abfx - all but first x becomes a y."
---

# `r-ss?`

   `r-ss?: string(word) -> boolean`. 

   True if the word contains either "r" or "ss".

        (check-expect (r-ss? "car") true)
        (check-expect (r-ss? "ssnake") true)
        (check-expect (r-ss? "wrassle") true)
        (check-expect (r-ss? "confabulous") false)
   
---
# `no-7`

`no-7: number(n) -> number`
    
Remove the 7s from a number.

        (check-expect (no-7 127347) 1234)
        (check-expect (no-7      7)    0)

---
# `abfx`

`abfx: string -> string`

Change all but the first "x" to a "y".

        (check-expect (abfx "x") "x")
        (check-expect (abfx "xx") "xy")
        (check-expect (abfx "xxx") "xyy")
        (check-expect (abfx "zxyxx") "zxyyy")

