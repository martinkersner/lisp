; Learn to Program in Lisp, One Game at a Time! by Conrad Barski, M.D.

; Martin Kersner, m.kersner@gmail.com
; 2016/04/10

(load "graph-lib")

(defparameter *congestion-city-nodes* nil)
(defparameter *congestion-city-edges* nil)
(defparameter *visited-nodes* nil)
(defparameter *node-num* 30)
(defparameter *edge-num* 45)
(defparameter *worm-num* 3)
(defparameter *cops-odd* 15)

(defun random-node ()
  (+ 1 (random *node-num*)))

(defun edge-pair (a b)
  (unless (eql a b)
    (list (cons a b) (cons b a))))

(defun make-edge-list ()
  (apply #'append (loop repeat *node-num*
                        collect (edge-pair (random-node) (random-node)))))
