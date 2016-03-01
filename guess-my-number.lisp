; Learn to Program in Lisp, One Game at a Time! by Conrad Barski, M.D.

; Martin Kersner, m.kersner@gmail.com
; 2016/03/01

(defparameter *small*   1)
(defparameter *big*   100)

(defun guess-my-number ()
  (ash (+ *small* *big*) -1))

(defun smaller ()
  (setf *big* (1- (guess-my-number)))
  (guess-my-number))

(defun bigger ()
  (setf *small* (1+ (guess-my-number)))
  (guess-my-number))

(defun start-over ()
  (defparameter *small*   1)
  (defparameter *big*   100)
  (guess-my-number))
