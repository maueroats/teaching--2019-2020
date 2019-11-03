---
title: "Ch4 Mocking"
date: 2019-10-14T16:02:40-05:00
weight: 40
draft: false
#type: slide
#theme: white
---

The term "mocking" refers to producing a "fake" function or component
to use only during testing. The origin of the term is the same as the
word "mock-up", which is a non-functional product made for testing
look or feel, or for demonstrating the appearance. Usually the
function being replaced is complex, whereas the "mock" function is
simplified or only made to work for certain cases.

Simplified example: suppose `(sum-first-N #'func 100)` applies a given
function to the first 100 integers and adds the results.
This function could have a mock
version that is only correct when func is the identity function.

    (defun mock-sum-first-N (f n)
      (loop for x from 1 to n
        sum x))

Another possibility is that a mock function could be passed that
only works when N<5 (this is pointless but could be used to detect
mistakes in `sum-first-N` function).

    (defun mock-func (num)
      (if (< num 5) 
        (* num num)
        (error "~A is too large of number" num)))
    (sum-first-N #'mock-func 100)
    
## Why Mock?

We are learning about using mock functions for testing because the
`achieve-all` and `achieve-one` form a mutually recursive system that
does not let you test each function individually. When we add an input
to the `achieve-all` function telling it which function to call in
order to achieve a single goal (`achieve-one`), we can pass in a
version of the function that we know gives the right answer under
certain controlled circumstances. This lets us make sure the
`achieve-all` function works in isolation before coupling it with the
`achieve-one` function. Of course we perform similar testing with the
`achieve-one` function in isolation as well.

## Example of Mocking

This example is courtesy of John Wu.

Here's a simpler example of this that came up earlier for people who
are still confused about what mocking is.

There was a post about how we can
check functions that have a `(random x)` in them because well it's
random so there should be no feasible way to check it. The solution
uses something very similar to mocking, and with a little adjustment,
it can actually serve as a good example of mocking.

<!--
This is that post:

```lisp
(defun nonrandom-pick-word (n)
  (elt '("go" "fish" "fry") 
       n))
(define-test test-word 
  (assert-equal "fish" (nonrandom-pick-word 1)))
(defun random-pick-word ()
  (nonrandom-pick-word (random 3)))
```
-->

Okay, so back from the beginning let use the example given there. So
let's say that we want to recreate the `random-pick-word` function from
the example earlier.

```lisp
(defun random-pick-word ()
  "Picks a random word from 'go', 'fish', or 'fry'"
  (elt '("go" "fish" "fry") 
       (random 3)))
```
 
One way we can quickly rewrite this to replicate how `achieve-all` and
`achieve-one` works on at least a surface level is to write it like
this. In other words, we can pass a parameter to the element that
allows us to mock the hard to test parts. In this case that would be
the random part for reasons given earlier.

 

```lisp
(defun random-pick-word (&key (mocked-part (random 3)))
   "random-pick-word but modified to take in which elem it picks, defaults to random" 
   (elt '("go" "fish" "fry") mocked-part)) 
```
 
Now by passing the function simpler elements to test, we can actually
test to see if the `random-pick-word` works as we intend it to for the
possible values we can pass it. 

```lisp
(define-test test-random-pick-word 
   (assert-equal "go"   (random-pick-word :mocked-part 0))
   (assert-equal "fish" (random-pick-word :mocked-part 1)) 
   (assert-equal "fry"  (random-pick-word :mocked-part 2))) 
```

Now assumedly when all of these tests pass, we know that our function
will work with the random component because every possible thing that
`(random x)` could pass it has been tested to work. We have successfully
mock-tested our random function.

## Advanced note

Super-technical note: if you actually try this, you will see the
random choice does not change with different calls to
`(random-pick-word)` because the default value is chosen by evaluating
`(random 3)` only once when the function is defined. That's too
technical to worry about right now.


