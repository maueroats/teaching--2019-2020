---
title: "Strings for Experts"
date: 2017-11-19T15:30:06-06:00
draft: false
weight: 10
#type: slide
#theme: white
description: "Strings: randomizing and creating by formula."
---

This page contains information about advanced topics that I have been asked.

## Randomizing Letters of a String

The `implode` and `explode` functions change strings to and from lists of single letters.
To randomize a list, import `racket/list` and then use the `shuffle` function. 
If you are actually looking at lists, you should change to Beginning Student with List Abbreviations. 

```racket
(require picturing-programs)
(require racket/list)
(define (mix letters)
  (implode
   (shuffle
    (explode letters))))
(mix "alphabet soup")
```

## Advanced String Making

* There is an optional second argument to `number->string` that is the base to work in.
`(check-expect (number->string 31 2) "11111")`

* Single characters are different from single letter words. Racket uses `#\a` to denote the character "`a`" and `"a"` to denote the word containing a single letter a. Usually you do not work with characters, but...

* The `make-string` command takes in a number and a character to repeat (meaning `#\a` not `"a"`). Example: `(check-expect (make-string 7 #\a) "aaaaaaa")`.

* The `replicate` command repeats a string a certain number of times. 
Example: `(check-expect (replicate 2 "moo") "moomoo")`.
