---
title: "22a. Mini-Quiz"
date: 2019-02-27T16:50:50-06:00
weight: 95
draft: false
type: slide
theme: white
description: "ex-it, unlucky"
---

# `ex-it`

`ex-it: string -> string`

Change every "x" to a "y".

    (check-expect (ex-it "tresxxx") "tres")
    (check-expect (ex-it "zyzzyva") "zyzzyva") ; no change

---

# `unlucky`

`unlucky: number -> number`

How many multiples of 13 appear in the digits of n? (Just consider
two digit multiples.)

    (check-expect (unlucky 131) 1)
    (check-expect (unlucky 139) 2)
    (check-expect (unlucky 1263) 1)
    (check-expect (unlucky 1326) 2)
