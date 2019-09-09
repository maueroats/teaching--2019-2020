---
title: "Ch1 Notes"
date: 2019-09-08T17:57:32-05:00
weight: 10
draft: false
#type: slide
#theme: white
description: "Code for getting started with Lisp"
---

The is the code that I recommend at the start of each file. The first line sets
the debug level to maximum, and the last three load the "check-expect"
system and set it to print out details about every failure.

```lisp
(declaim (optimize (debug 3)))
(ql:quickload :lisp-unit)
(use-package :lisp-unit)
(defparameter *print-failures* t)
```

### Unit tests

Defining tests follows the pattern below.

```lisp
(define-test test-addition
  "Test the basic addition function. Duh."
  (assert-equal 5 (+ 2 3))
  (assert-equal 8 (+ 10 -2)))
```

There is [a complete writeup of lisp-unit](https://github.com/OdonataResearchLLC/lisp-unit/wiki) on GitHub, including advanced features like tagging tests and only running some of them.

### Running tests

Just call run-tests at the end of your file.

```lisp
(run-tests)
```


## Lisp Functions

* apply
* funcall
* mapcar
* mappend: Learn how to write this one.
* `(format t "One line~%")`

## Emacs Shortcuts

These are the shortcuts I regularly use:

* C-g to abort when Emacs hangs.
* C-c C-l to load a file into lisp.
* C-c C-z to open the lisp interpreter window if it gets closed.
* M-up M-down: Move through the history in the interpreter window.
* M-enter: Submit a command even if your cursor is not at the end of
  the line.

Occasionally I need this one to reset a messed up state (remember the
lisp interpreter does not restart between times when you load files).

* M-x slime-restart-inferior-lisp 

