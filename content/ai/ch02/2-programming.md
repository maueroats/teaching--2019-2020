---
title: "Ch2 Programming"
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

For completeness, a "property list" has the form `(:key1 value1 :key2 value2)`. 
You could [read more about property lists](https://www.cs.cmu.edu/Groups/AI/html/cltl/clm/node108.html) or just [see a few examples](https://riptutorial.com/common-lisp/example/12948/property-lists).

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

Download the [base-code](base-code.lisp).

{{< gist maueroats 81107dd8d89108e970b4af3c61891f4b >}}

