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

     Write the `pos+` function using (i) recursion; (ii) iteration
     (like loop); and
     (iii) `mapcar`.

3. Write a function `rle` that takes in a list and outputs a list of
   pairs `(item repeats)`, where `repeats` tells how many times in a
   row the item is repeated.
   
        (rle '(7 7 7 7 7 4 1 4 4 4))
        => ((7 5) (4 1) (1 1) (4 3))

4. (`div2`) You will write the function `div2`, divides a number by
   two. It has a keyword argument `:skip-odd` which defaults to false
   (`nil`). 
   
        (div2 5) => 2.5
        (div2 8) => 4
        (div2 5 :skip-odd T) => 5
        (div2 8 :skip-odd T) => 4

5. (`add2len`) Use `&rest` to make a function that returns the first
   number added to the number of arguments it receives.
   
        (add2len 5 10 20 30 40 50 60) => 5 + 7 = 12        

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

Make a file called "utility.lisp" and write the functions below, all
recommended by Paul Graham. Make sure to test them! We will keep adding to our utility functions file every week. 

* `(last1 lst)`: The last item in a list.
* `(single lst)`: True if the argument is a length 1 list. (Do not use
  `length` it is slow.) Test your function on: `'(a)` and `'(a
  b)`. We will discuss the weird case of `'()` in class.
* `(append1 lst item)`: Append a single item to the end of a list.
* `(mklist obj)`: If the object is not already a list, put it in one.
* `(longer x y)`: Give true if the list x is longer than y, but do not traverse the whole list - once you know enough to deduce x is longer (or not), stop and give the answer.

The last function is a little more complex than the other
ones, I am thinking of a recursive solution that goes through both
lists at the same time.
