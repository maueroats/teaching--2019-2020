---
title: "Ch5 Nightly 3"
date: 2019-11-13T11:52:04-06:00
weight: 13
draft: false
#type: slide
#theme: white
---

We are creating a way to match pattern segments -- not just individual
words -- using `(?* ?x)`. Today you are writing `segment-match`, which
takes in a pattern (assumed to begin with a `?*`-pattern) and an input
to match.

## Tests

Your code should do at least this much.

    (assert-equal (list ('?x . '(the food was))) 
                  (segment-match '((?* ?x) great)
                                 '(the food was great)))
    (assert-equal NIL
                  (segment-match '((?* ?x) terrible)
                                 '(the food was great)))

## Eventual Goals

If your code matches more than one pattern, that's great but it could
be a little tricky without reading the book.

    (assert-equal (list ('?x . '(really fun)) ('?y . (at the museum)))
                  (segment-match '(I had a (?* ?x) time (?* ?y) thanks)
                                 '(I had a really fun time at the museum thanks)))

    (assert-false (segment-match '(I went (?* ?x) zoo)
                                 '(I went golfing at the park)))

## Tools

* `(position 'x '(a b x c) :start 1)`
* `(subseq '(a b x c) 1 3)`
