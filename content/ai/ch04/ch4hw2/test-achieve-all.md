---
hidden: true
---
```lisp
(defun mock-achieve-one (state goal
                         &key (remaining-goals nil)
                           (goal-stack nil) (ops nil))
  (declare (ignore ops))
  (dbg :mock-achieve-one goal-stack "Mocking ~a" goal)
  (dbg :mock-achieve-one goal-stack "Remaining goals: ~a" remaining-goals)
  (cond ((member-* 'bad remaining-goals) (error 'simple-error :format-arguments "Bad goal found!"))
        ((eq goal 'bad) '(good bad s5))
        ((eq goal 's1) nil)
        ((eq goal 's2) 
         ;; example of sneaking in dbg1 and returning a value
         (dbg1 :mock-achieve-one goal-stack "Saw s2, giving ~a" nil))
        ((eq goal 's3) (append state '((executing b) s3)))
        ((eq goal 's4) (append state '((executing c) s1 s4)))))

(define-test test-achieve-all
  "Test only the achieve-all function.
It should continue to attempt goals until one works."

  ;; Makes sure a single goal can be achieved.
  (assert-equality
   #'set-equalp
   '(s2 s3 (executing b))
   (achieve-all '(s2) '(s3) :achieve-one #'mock-achieve-one))

  ;; Make sure the goal is removed from the remaining goals
  ;; if it is not, the mock-achieve-one will signal an error.
  (assert-equality
   #'set-equalp
   '(good bad s5)
   (achieve-all '(medium s2) '(bad s5) :achieve-one #'mock-achieve-one))

  ;; This test checks that the second goal is attempted after the
  ;; first one fails.
  (assert-equality
   #'set-equalp
   '(s1 s4 (executing c))
   (achieve-all '() '(s1 s4) :achieve-one #'mock-achieve-one))

  ;; Instant success, goal is subset of current state
  (assert-true
   (achieve-all '(s1 s2 s3 (executing a) (executing b))
                '(s1 s3 (executing a))
                :achieve-one #'error)))

```
