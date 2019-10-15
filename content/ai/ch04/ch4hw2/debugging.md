---
hidden: true
---
Put this early in your lisp source file. You can turn off debugging
printouts from individual functions by removing their `:names` from
the `*dbg-ids*` variable. See the tests for 
`achieve-all` for examples of the use of these functions. 

The difference between them is that `dbg1` returns the value that you
give it, so you can  sneak it in to show what is happening as you are
using or returning a value.

```lisp
(defvar *dbg-ids* '()
  "Identifiers you are debugging")

(setf *dbg-ids* '(:achieve-all :mock-achieve-one
                  :achieve-one :mock-achieve-all))

(defun dbg (id indent format-string &rest args)
  (when (member id *dbg-ids*)
    (fresh-line *debug-io*)
    (dotimes (i (length indent)) (princ "  " *debug-io*))
    (apply #'format *debug-io*
           (concatenate 'string "[~a] " format-string)
           id args)))

(defun dbg1 (id indent format-string value)
  "Passes VALUE to dbg, also gives VALUE as result."
  (progn
    (dbg id indent format-string value)
    value))
```

