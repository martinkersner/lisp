(defun my-list-length (list)
  (if list
    (1+ (my-list-length (cdr list)))
    0))
