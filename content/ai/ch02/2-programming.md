---
title: "Ch02.Programming"
date: 2019-09-13T09:20:44-05:00
weight: 20
draft: false
#type: slide
#theme: white
description: "The facts about Lisp used in the sentence generator."
---

## Associations and Properties

An "association list" has the form `((key1 value1) (key2
value2))`. The `assoc` function takes in a key and returns the
`(key value)` list .

```lisp
(defparameter *info* '((good 50) (bad -10)))
(defun get-good ()
  (assoc 'good *info*))
; (get-good) => '(good 50)
```

## Debugging

* `(trace cow-graze)`: Show the inputs and outputs of every call to `cow-graze`.
* `(untrace cow-graze)`

## Variables

* `defvar`: A variable expected to be changed, maybe by a human. Does
  not reset when the file is reloaded. Changing this is not considered
  a change to the program.
* `defparameter`: A "constant". Reset when the file is
  reloaded. Changing this is considered a change to the program.
  

## Utility

See the [base-code](base-code.lisp).

