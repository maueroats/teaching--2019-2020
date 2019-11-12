---
title: "Ch5 Nightly 1"
date: 2019-11-12T10:51:34-06:00
weight: 11
draft: false
#type: slide
#theme: white
---

The purpose of this assignment is so you keep up with what we are
doing in class.

Write the `pat-match` function that returns `T` when the pattern
matches, and `NIL` otherwise.

It should pass the following checks:

     (assert-true (pat-match '?x 'a))
     (assert-true (pat-match 'a  'a))
     (assert-false (pat-match 'b 'a))
     (assert-true (pat-match '(I like cream) '(I like cream)))
     (assert-false (pat-match '(I like cream) '(I like cookies)))
     (assert-true (pat-match '(I ?y cream) '(I hate cream)))
     (assert-false (pat-match '(I ?z cream) '(I hate cookies)))
     (assert-true (pat-match '(I am (?x) but ?y)
                             '(I am (complicated) but right)))
     (assert-false (pat-match '(I am (not ?x))
                             '(I am (simple))))

