; Martin Kersner, m.kersner@gmail.com
; 2016/03/01

; sigmoid function for a single value
(defun sigmoid (n)
  (/ 1 (+ 1 (exp (* (- n))))))
