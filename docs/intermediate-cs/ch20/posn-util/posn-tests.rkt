(require picturing-programs)
(require "posn-util.rkt")

;; untested as of 2019-01-08 - let me know if there are errors!

(define ex1 (make-posn 5 12))
(define ex2 (make-posn 8 15))
(define ex3 (make-posn 7 24))
(define pzero (make-posn 0 0))

(check-expect (add-posns ex1 ex2)
	      (make-posn 13 27))

(check-expect (sub-posns ex2 ex1)
	      (make-posn 3 3))
(check-expect (sub-posns ex2 ex3)
	      (make-posn 1 -9))

(check-expect (scale-posn 2 ex1)
	      (make-posn 10 24))
(check-expect (scale-posn 3 ex2)
	      (make-posn 24 45))

(check-within (distance pzero ex1)
	      13
	      0.01)

(check-within (distance ex2 ex3)
	      9.055
	      0.001)

(define c1 (circle 5 "solid" "blue"))
(define r1 (rectangle 300 200 "solid" "yellow"))
(define spot (make-posn 50 75))

(define answer1 (place-image c1 50 75 r1))
(check-expect (place-image/posn c1 spot r1)
	      answer1)

