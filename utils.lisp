(defun my-list-length (list)
  (if list
    (1+ (my-list-length (cdr list)))
    0))

(defun say-hello ()
  (princ "Please write your name: ")
  (let ((name (read-line)))
       (princ "Nice to meet you, ")
       (princ name)))

(defun add-five ()
  (print "Input number:")
  (let ((number (read)))
    (print "Result is:")
    (prin1 (+ number 5))))
