;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname posn-util) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require picturing-programs)
(provide (all-defined-out))

(define (add-posn a b)
  (make-posn (+ (posn-x a) (posn-x b))
             (+ (posn-y a) (posn-y b))))
(define (scale-posn k v)
  (make-posn (* k (posn-x v))
             (* k (posn-y v))))
(define (sub-posn a b)
  (add-posn a (scale-posn -1 b)))

(define (norm a)
  (+ (sqr (posn-x a))
     (sqr (posn-y a))))

(define (dist-squared-posn a b)
  (norm (sub-posn a b)))

(define (dist-posn a b)
  (sqrt (dist-squared-posn a b)))

(define (distance p q)
  (sqrt (+ (sqr (- (posn-x p)
                   (posn-x q)))
           (sqr (- (posn-y p)
                   (posn-y q))))))

(define (place-image/posn img p bg)
  (place-image img
               (posn-x p)
               (posn-y p)
               bg))

(define (add-posns p1 p2)
  (add-posn p1 p2))
(define (sub-posns p1 p2)
  (sub-posn p1 p2))
