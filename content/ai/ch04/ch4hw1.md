---
title: "4. Ch4 HW1"
date: 2019-10-03T09:26:58-05:00
#weight: 
draft: false
#type: slide
#theme: white
---

Read pages 99-101 in the book and write `complement` and `find-all`,
possibly copying them from the book.

1. (`ball`)

   * Make a structure `ball` that holds the `kind` of ball (a symbol)
   and the `circ`-umference of the ball (in inches, a number). 
   * Create a softball with a circumference of 12.
   * Modify the circumference to be 13.
   * Write a function that takes in anything (even lists and numbers)
     and returns true if the item is a ball of circumference greater
     than 10.

2. The function `pos+` takes in a list and returns a list of each
   element plus its position.
   
        (pos+ '(7 5 1 4))
        => (7 6 3 7)

     Write the `pos+` function using (i) recursion; (ii) iteration; and
     (iii) `mapcar`.

3. Write a function `rle` that takes in a list and outputs a list of
   pairs `(item repeats)`, where `repeats` tells how many times in a
   row the item is repeated.
   
        (rle '(7 7 7 7 7 4 1 4 4 4))
        => ((7 5) (4 1) (1 1) (4 3))

## Fixit

A classmate is trying to write a function that reteurns the sum of all
of the non-nil elements in a list. Neither version below
works. Explain why and fix each (in the style it is written):

A.

```lisp
(defun summit (lst)
  (remove nil lst)
  (apply #'+ lst))
```

B.

```lisp
(defun summit (lst)
  (let ((x (car lst)))
    (if (null x)
      (summit (cdr lst))
      (+ x (summit (cdr lst))))))
```


## Utility Functions

Make a file called "utility.lisp" and write these functions:

