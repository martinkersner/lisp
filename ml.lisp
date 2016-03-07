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

; log of all elements in a list
(defun log_list (x)
  (mapcar #'log x))

; cross-entropy
; C = (-1/n)*sum[y*ln(a) + (1-y)*ln(1-a)]
(defun cross-entropy (a y)
  (let ((one_minus_a (mapcar #'1- a))
        (one_minus_y (mapcar #'1- y))
        (one_div_len (/ 1 (length a))))
  (- (* one_div_len (apply '+ (mapcar #'+ (mapcar #'* y (log_list a)) (mapcar #'* one_minus_y (log_list one_minus_a))))))))

;softmax function
; e^(x_i)/sum(x_i)
(defun softmax (x)
  (let* ((x_to_exp (mapcar #'exp x))
        (denominator (apply '+ x_to_exp)))
    (my-div x_to_exp denominator)))

(defun my-div (my-list denominator)
  (if my-list (progn 
                (cons (/ (car my-list) denominator)
                      (my-div (cdr my-list) denominator)))))
