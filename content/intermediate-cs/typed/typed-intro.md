---
title: "Typed Intro"
date: 2019-05-06T07:20:10-05:00
weight: 10
draft: false
#type: slide
#theme: white
description: "All of the basics you need to start using Typed Racket."
---

Many of the most common languages in use today require you to specify
the types on inputs and outputs of a function. That is to say, they
every function requires a signature. 

There are two main benefits to this kind of typing:

1. **Speed**. The code runs faster when the computer has no doubt that
   a certain variable always contains a certain kind of value, like a
   posn. 
   
2. **Reliability**. The computer can check before starting the program
   that there is never a time when the `posn-x` function is called on
   a `color`. In regular Racket, this kind of mistake causes the
   program to halt with an error _when the mistake runs_. In Typed
   Racket, the mistake is detected before the program starts running -
   there is no suspense and no uncertainty.


## Initial Setup

1. One time per computer:

    File -> "Install Package..." -> Enter "picturing-programs-typed" and choose the
    "Install" button.
    
2. Beginning of every file:

        #lang typed/racket
        (require typed/picturing-programs)


3. End of the file - you need to run the check-expects manually.

        (test)
        
