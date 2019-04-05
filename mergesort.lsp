(defun split (sequence)
  (let ((middle (ceiling (length sequence) 2)))
    (list (list* (subseq sequence 0 middle)) (list* (subseq sequence middle nil)))))

(defun mergesort (Line)
  (cond
    ((endp (rest Line)) (list (first Line)))
    ((destructuring-bind (odd-zs  even-zs) 
         (list (mergesort (car(split Line))) (mergesort (cadr(split Line))))
            (merge 'list odd-zs even-zs #'<)))))
             
;main
 (let ((n (read))
        (numbers))
    (setf numbers
        (do ((i 0 (+ i 1))
            (tmp nil))
        ((>= i n)
            (reverse tmp))
        (setf tmp (cons (read) tmp))))
    (format t "~{~A ~}~%" (mergesort numbers)))