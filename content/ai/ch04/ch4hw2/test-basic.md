---
hidden: true
---
```lisp
(declaim (optimize (speed 0) (space 0) (debug 3)))
(ql:quickload :lisp-unit)
(use-package :lisp-unit)
(setf *print-failures* t)

(defstruct op name prereq gain lose)


(defparameter *demo-ops-skeleton*
  `((A (s1) (s2) (s1))
    (B (s2) (s3) (s2))))

(defun op-it-1 (lst)
  (make-op :name (first lst)
           :prereq (second lst)
           :gain (third lst)
           :lose (fourth lst)))

(defun convert-op (x)
  "Adds (executing op) to the list of things you gain."
  (push (list 'executing (op-name x))
        (op-gain x))
  x)

(defun make-op+ (x)
  (convert-op (op-it-1 x)))

(defun make-oplist (xs)
  (mapcar #'make-op+ xs))

(defparameter *demo-ops*
  (make-oplist *demo-ops-skeleton*))

(defun (unimpl x)
  (format *debug-io* "You need to implement ~a" x)
  nil)
  
;;; 
;;; BEGINNING OF CODE YOU NEED TO WRITE
;;;

;; TODO 

(defun member-* (x xs)
  (unimpl 'member-*))

(defun set-equalp (x y)
  (set-equal x y :test #'equalp))

;; TODO
(defun remove-* (subtract all)
  "Remove using equalp SUBTRACT from ALL, returning remaining ALL."
  (unimpl 'remove-*))
  
;; TODO
(defun all-achieved (wanted got)
  (unimpl 'all-achieved))

;; TODO 
(defun apply-op (state the-op)
  (unimpl 'apply-op))
  
;; TODO
(defun appropriate-p (oop goals)
  (unimpl 'appropriate-p))

;; TODO 
(defun find-appropriate-1 (ops goal)
  (unimpl 'find-appropriate-1))

;;;
;;; ---- TESTING -----
;;;

(defparameter *test-big-ops*
  (make-oplist
   '((a (s1) (s2) (s1))
    (b (s1) (s3) (s1))
    (c (s1) (s4) (s1))
    (d (s2) (s3) (s2))
    (e (s4) (s1 big) (s4))
    (f (s3) (s5) (s3))
    (g (s2) (s1) (s2)))))

(defvar *ops* *test-big-ops* "Operations to use to achieve the goals.")

(define-test test-stage-1
  "Verify simple functions work."
  (assert-equalp (make-op :name 'a
                          :prereq '(s1)
                          :gain '((executing a) s2)
                          :lose '(s1))
                 (first *test-big-ops*))
  (assert-true (appropriate-p (first *test-big-ops*)
                              '(s2)))
  (assert-true (appropriate-p (fifth *test-big-ops*)
                              '(big)))
  (assert-false (appropriate-p (fifth *test-big-ops*)
                               '(s2)))
  (assert-equalp
   (list (fifth *test-big-ops*)
         (seventh *test-big-ops*))
   (find-appropriate-1 *test-big-ops* 's1))
  (assert-equality #'set-equalp
                   '(s1 big (executing e))
                   (apply-op '(s4) (fifth *test-big-ops*)))
  (assert-equality
   #'set-equalp
   '(start done (good 5) (bad 3) (executing works))
   (apply-op '(start (middle 4))
             (make-op+
              '(works
                (start (middle 4))
                ((bad 3) (good 5) done)
                ((middle 4)))))))

```
