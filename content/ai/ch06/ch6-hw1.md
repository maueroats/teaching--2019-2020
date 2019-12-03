---
title: "Ch6 HW1"
date: 2019-12-03T09:28:35-06:00
weight: 200
draft: false
#type: slide
#theme: white
---

Definition: A predicate is a function that takes in an argument that
can be anything, and returns a boolean.

1. Write `find-all`, which return a list of all items in the sequence
   that match the given item, possibly with an unusual `:test`. Also
   `:test-not t` should give the opposite results (include items that
   would be excluded, and vice versa).

        (defun find-all (item sequence 
                         &key (test #'eql) test-not)
                ...)
                         
2. Write a function to break a list into two lists, the first where
   the predicate is satisfied, the second where it is not satisfied.

        (defun partition-if (pred list)
            ;; define satisfies-list and not-satisfies-list
            ;; ...
           (values satisfies-list not-satisfies-list))

TO BE CONTINUED
