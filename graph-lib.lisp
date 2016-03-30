; Learn to Program in Lisp, One Game at a Time! by Conrad Barski, M.D.

; Martin Kersner, m.kersner@gmail.com
; 2016/03/30 

(defun dot-name (exp)
  (substitute-if #\_ (complement #'alphanumericp) (prin1-to-string exp)))
