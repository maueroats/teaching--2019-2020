---
title: "Ch5 Nightly 5"
date: 2019-11-20T22:40:31-06:00
weight: 15
draft: false
#type: slide
#theme: white
---

In class we discussed the changes necessary in order to check to see
if a variable matched an existing value.

We added a keyword argument to `pat-match` in order to hold the
association list of `(?var . value)` pairs. 

This was the pseudo-code we wrote for the revised matcher:

    if (variable is already seen) then
      if current value from input is the same as the seen variable then
        recursively call pat-match on the rest of the pattern and input.
      else
        match fail
      end if
    else
      set up new variable binding
      recursively call pat-match, including new binding
    end if

I recommend using `assoc` to find the bindings.

## Tests

It is ok if you have `(T . T)` at the end of your association list.

```lisp
(assert-equal '((?x . happy))
              (pat-match '(?x is ?x) '(happy is happy)))
(assert-false (pat-match '(?x is ?x) '(happy is sad)))
(assert-false (pat-match '(?x is ?y end) '(happy is sad))) ; already ok?
(assert-equal '((?y . cream) (?x . happy))
              (pat-match '(?x is ice ?y) '(happy is ice cream)))
```

