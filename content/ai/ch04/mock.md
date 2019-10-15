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

