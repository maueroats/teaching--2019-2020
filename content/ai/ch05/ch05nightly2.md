---
title: "Ch5 Nightly 2"
date: 2019-11-13T11:11:33-06:00
weight: 12
draft: false
#type: slide
#theme: white
---

We are modifying our pattern matcher to return an association list.

* No match should return `NIL`
* No variables to match should return `(list (T . T))` or you could put
  anything else there. We talked about the fact that the answer should
  still be an association list, which means `(list T)` is not what we
  want.
* Variable matching should return `(list ('?var . 'value))`.

Your job for tonight is to write the 1 item pattern matcher.

    (assert-equal (list (T . T))  (pat-match 'a 'a))
    (assert-equal NIL (pat-match 'a 'b))
    (assert-equal (list ('?x . 'food)) (pat-match '?x 'food))
