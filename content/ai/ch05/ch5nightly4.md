---
title: "Ch5 Nightly 4"
date: 2019-11-18T21:13:21-06:00
weight: 14
draft: false
#type: slide
#theme: white
---

Today we are writing code that attempts to match a segment at every
possible endpoint. We are building off of a skeleton of
`segment-match` that we wrote in class (or for Nightly 3). 

Note: as discussed in class, a `(x . y)` is the same as `(cons x
y)`. If `y` is not a list, this will display as `(x . y)`. If `y` is a
list, say `(list a b c)`, then `(cons x (list a b c))` is exactly the
same as `(list x a b c)` so that is what you will see displayed. 

## Tests

Your code should do at least this much.

    (assert-equal '((?x . (He ate fast and he drank fast)))
                  (segment-match '((?* ?x) fast)
                                 '(He ate fast and he drank fast)))
    (assert-false (segment-match '((?* ?x) fast) '(He is slow)))
    (assert-false (segment-match '((?* ?x) fast) '(He is fast and slow)))

Note that the last one will require you to fail from `pat-match` not
in the `segment-match`.



