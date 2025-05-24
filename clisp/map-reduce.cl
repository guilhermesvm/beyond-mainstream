(defvar lista '(10 25 8 45 -9))

(princ 
    (reduce '+
        (mapcar 
            (lambda (n) 
                (if (zerop (mod n 2))
                    n
                    0
                )
            ) 
            lista
        )
    )
)