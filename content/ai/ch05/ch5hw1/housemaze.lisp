(declaim (optimize (speed 0) (space 0) (debug 3) (safety 3)))
(ql:quickload :lisp-unit)
(use-package :lisp-unit)
(setf *print-failures* t)

;; Source: Drawing trees in Common Lisp
;; https://stackoverflow.com/questions/890689/drawing-trees-in-common-lisp

(ql:quickload "draw-cons-tree")
(use-package :draw-cons-tree)

;; Example of visualizer
(draw-tree '(a b (c d) e))

;; Back to the problem setup.

(defparameter *rooms*
      '((living-room (north front-stairs)
                     (south dining-room)
                     (east kitchen))

        (upstairs-bedroom (west library)
                          (south front-stairs))

        (dining-room (north living-room)
                     (east pantry)
                     (west downstairs-bedroom))

        (kitchen (west living-room)
                 (south pantry))

        (pantry (north kitchen)
                (west dining-room))

        (downstairs-bedroom (north back-stairs)
                            (east dining-room))

        (back-stairs (south downstairs-bedroom)
                     (north library))

        (front-stairs (north upstairs-bedroom)
                      (south living-room))

        (library (east upstairs-bedroom)
                 (south back-stairs))))

(defvar rooms *rooms*)
