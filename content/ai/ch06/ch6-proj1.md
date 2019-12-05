---
title: "Ch6 Proj1"
date: 2019-12-05T09:29:38-06:00
#weight: 
draft: false
#type: slide
#theme: white
---

Write a table-based parser to handle the goofy situations illustrated
on this page. If your parser does not recognize a term, it should just
pass it through unchanged.

    (?gerbil NAME ACTIVITY)
    => (The gerbil NAME loves to ACTIVITY)
    

There are two different kind of dog patterns. In the second, the
number indicates how many times to dog barks.

    (?dog NAME)
    => (NAME loves to bark)
    
    (?dog NAME 4)
    => (NAME loves to bark. Bark! Bark! Bark! Bark!)

A cat has a random activity. The `(purr|meow|rawwr)` term below
indicates that one of those is chosen at random for each appearance of
`(?cat NAME)`.

    (?cat NAME)
    => (The cat NAME loves to (purr|meow|raawr))
    
There are also some math operations

    (?+ 5 8) => 13
    (?* 5 8) => 40
  
Random choice is one of the possibilities. You should randomly choose
between the rest of the items in the rest of the list. There are three
choices possible in this example:

    (?random Aleatorea Aviator (Big Dog))
    

