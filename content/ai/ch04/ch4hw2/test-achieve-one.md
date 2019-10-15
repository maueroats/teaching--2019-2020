---
hidden: true
---

This mock achieve all function is surprisingly simple (to me). 

* If all of the goals are achieved, it does nothing. 
* If `'s4` is in the goals, then call `achieve-one`.
* Otherwise pretend the goals were achieved and give back the current
state. 

The mocking is first, followed by the testing code.

```lisp
(defun mock-achieve-all (state goals
                         &key (achieve-one #'error)
                           (goal-stack nil)
                           (ops *test-big-ops*)
                           &allow-other-keys)
  (declare (ignore achieve-one goal-stack))
  (cond ((all-achieved goals state) state)
        ;; auto-achieve goal even if it is not true
        ((member-* 's4 goals)
         (achieve-one state 's4 :achieve-all #'mock-achieve-all :ops ops))
        (t state)))
```

##  Actual Testing

```lisp
(define-test test-achieve-one
  "Use mock achieve-all to test achieve-one"

  ;; apply the second operation for success
  ;; all prerequisites satsified
  (assert-equality
   #'set-equalp
   '(start s1 s3 (executing b))
   (achieve-one '(start s1 s2) 's3
                :ops (make-oplist
                      '((a (s1) (s4) (s1 start))
                        (b (s2) (s3) (s2))))
                :remaining-goals '()
                :achieve-all #'mock-achieve-all))

  ;; a chain of two operations is required
  ;; one problem this exposed was not passing :ops to all achieve-* functions
  (assert-equality
   #'set-equalp
   '((executing a) (executing b))
   (only-executing
    (achieve-one '(start s1 s2) 's3
                 :ops (make-oplist
                       '((a (s1) (s4) (s1 start))
                         (b (s2) (s3) (s2))))
                 :remaining-goals '(s4)
                 :achieve-all #'mock-achieve-all))))


(define-test test-gps
  "Make sure cycles are handled."
  (assert-true (gps '(s1) '(s5 big) *test-big-ops*)))
```
