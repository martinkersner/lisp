; Martin Kersner, m.kersner@gmail.com
; 2016/03/01

; sigmoid function for a single value
(defun sigmoid (n)
  (/ 1 (+ 1 (exp (* (- n))))))

; simple model of neuron with sigmoid activation function
; (neuron '(1 2) '(3 4) 2)
(defun neuron (x w b)
  (setf output (sigmoid (apply '+ (mapcar #'* (cons 1 x) (cons b w)))))
  (if (> output 0)
    1
    0))
