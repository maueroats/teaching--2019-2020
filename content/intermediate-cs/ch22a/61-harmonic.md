---
title: "22a. Harmonic"
date: 2019-02-15T11:38:48-06:00
weight: 61
draft: false
#type: slide
#theme: white
description: "Short review question."
---

1. The `harmonic-add` function takes in a `start` and an `end` number,
   and finds the sum `1/start + 1/(start+1) + ... + 1/end`. 
   
        (check-expect (harmonic-add 1 2) 1.5)
        (check-within (harmonic-add 1 3) 1.8333 0.0001)
        (check-within (harmonic-add 1 4) 2.0833 0.0001)

