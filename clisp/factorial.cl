(defun factorial (n) 
    (if (zerop n)
        1
        (* n (factorial (- n 1)))
    )
)

(defun show-factorial (n)
    (format T "Factorial of number ~d: ~d~%" n (factorial n))
)

(princ "Submit an integer value: ")
(show-factorial (read))
