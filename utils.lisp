(defun my-list-length (list)
  (if list
    (1+ (my-list-length (cdr list)))
    0))

(defun say-hello ()
  (print "Please write your name:")
  (let ((name (read)))
       (print "Nice to meet you,")
       (prin1 name)))
