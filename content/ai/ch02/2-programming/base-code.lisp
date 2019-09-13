(declaim (optimize (debug 3)))
(ql:quickload :lisp-unit)
(use-package :lisp-unit)
(defparameter *print-failures* t)

(defun mappend (f xs)
  (apply #'append
         (mapcar f xs)))

(defun demo (x)
  (list x 1))

(define-test test-mappend
    "Make sure all is ok"
  (assert-equal '(5 1 7 1) (mappend #'demo '(5 7))))

(run-tests)
