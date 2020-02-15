---
title: "Typed Variables and Functions"
date: 2019-05-06T14:22:07-05:00
weight: 20
draft: false
#type: slide
#theme: white
description: "Giving types to variables and functions."
---

A quick introduction to types, including how to specify types of
variables and functions.

## Types of Everything

* Basic types: `String`, `Number`, `Boolean`, `Image`.
* Function: `(-> [input types] [output type])`
* Composite types: `(Listof Number)` - or even `(Listof Any)`

## Specifying Types for Variables

There are two ways to specify a type: with inline or with the
colon (`:`) on a separate line.

1. `name : Type` notation in place of the plain `name` 

        (define WIDTH : Integer 400)

    Be careful to put spaces on either side
    of the colon. This method becomes `[name : Type]` when used in
    arguments to a function (see below).

2. `(: name Type)` on a separate line before `name`

        (: HEIGHT Integer)
        (define HEIGHT 300)


## Specifying Types for Functions

You can use the `[name : Type]` or `(: name Type)` method to write the
type of a function as well. You should include the output type, just
like a signature.

1. `[name : Type]` method: A function that takes in a number and puts
   out a number plus 5: 

        (define (f [x : Number]) : Number
          (+ x 5))
    
2. `(: name Type)` method: A function that takes in a string and puts
   out double its length: 

        (: g (-> String Number))
        (define (g str)
          (* 2 (string-length str)))
      
3. A function that takes in a number and puts out a that many
   repetitions of "word" (literally):

        (define (h [num : Integer]) : (Listof String)
          (make-list num "word")
