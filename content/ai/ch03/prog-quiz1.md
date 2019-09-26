---
title: "Chapter 3 Quiz 1"
date: 2019-09-26T09:21:10-05:00
#weight: 
draft: false
#type: slide
#theme: white
---

This quiz covers through Chapter 2 and roughly the first half of the
problem set from Chapter 3.


1. Produce a list of the first 55 multiples of 5 that are greater than
         or equal to the input number.
         
         m555: integer(num) -> list of integers

2. The cities in states are stored in a list `*ATLAS*`, like this:

        ((pennsylvania pittsburg)
         (pennsylvania harrisburg)      
         (new-jersey newark)
         (ohio columbus))
    
    Write a function that returns all of the cities in a given state.

3. In playing craps, the first throw of the dice is crucial A throw of
   7 or 11 is an instant win. A throw of 2, 3, or 12 is an instant
   loss. 
   
   a. The function `throw-dice` returns  alist of two random numbers,
   each from 1 to 6. 

   b. Two ones is "snake eyes" and two sixes is "boxcars". 

   c. Write predicates `instant-win-p` and `instant-loss-p` to detect
   these conditions. Each hould take a throw as input.
   
   d. Write a function `say-throw` that takes a throw as input asd
   returns either the sum of the two dice or the symbol SNAKE-EYES or
   BOXCARS if the sum is 2 or 12. 
   
   e. If you don't win or lose, the value that you get becomes your
   "point". Once the point is established, you continue throwingg the
   dice until you either win by making the point again, or lose by
   throwing a 7. Write a simulation of the craps game that produce a
   list of values that ends when you win or lose the game.
   
   f. Write a `say-craps` function that takes in the list that you
   produced and puts out a list like one of these:
   
       * `(SNAKE-EYES YOU-LOSE)`
       * `(7 YOU-WIN)`
       * `(11 YOU-WIN)`
       * `(YOUR POINT IS 5 2 3 7 5 YOU-WIN)` 
       * `(BOXCARS YOU-LOSE)` 
       * `(YOUR POINT IS 4 8 7 YOU-LOSE)`

## Ignore this part

Write a simple English to Spanish language translator in an
   extensible way. It should keep vocabulary tables `*nouns*`,
   `*verbs*`, and `*misc*` that it
   uses to translate nouns in English to Spanish.

    a. Noun lookups: house - la casa, school - la escuela,
    student - el estudiante, homework - la tarea. Each single noun
    should be "translated" into a two item list containing the article
    and the noun in Spanish, so `homework` becomes `(la tarea)`. 
    b. Verb lookups: work - trabajar, study - estudiar, attend -
    asistir.
    c. Misc: I - yo, he - el, she - ella, the - el/la.
    d. Translate from English to Spanish: `(I attend school)` becomes
    the incorrect `(Yo asistir la escuela)`. Words that you do not
    recognize should just remain the same.
    e. Use the same data to write an attempt at a reverse translation:
    `(Yo asisto a la escuela)` becomes `(I attend a the school)`. In
    order to try to figure out the verb stem, you will need the
    `symbol-name` function `(symbol-name 'FOO) => "FOO"` as well as
    some string-manipulation functions.
    
    
