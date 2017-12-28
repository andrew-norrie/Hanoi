

(defun cardinal-list (n seed)
  (if (zerop n)
      seed
      (cardinal-list (- n 1) (cons n seed))))


(defun make-towers (n)
  (let ((table (make-hash-table :size 3))
        (tower (cardinal-list n nil)))

    (setf (gethash 'first table) tower)
    table))


(defun show-towers (x)
  (format t "~%~S~%~S~%~S~%~%" 
          (reverse (gethash 'first x))
          (reverse (gethash 'spare x))
          (reverse (gethash 'final x))))


(defun move-towers (n src dst stks)
  (let ((a (gethash src stks))
        (b (gethash dst stks)))

    (assert (and (equal n (car a)) (apply  #'< (cons n b))))

    (setf (gethash dst stks) (cons (car a) b))
    (setf (gethash src stks) (cdr a))
    (show-towers stks)))


(defun hanoi (n tower spare final stks)

  (if (zerop n)
      (return-from hanoi 'done))

  (hanoi (- n 1) tower final spare stks)
  (move-towers n tower final stks)
  (hanoi (- n 1) spare tower final stks))

(hanoi 10 'first 'spare 'final (make-towers 10))

