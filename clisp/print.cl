(write "Hello, World!")

(print (* 50 10))
(print (- 30 10))
(print (and 10 NIL (+ 10 20)))
(print (or 10 NIL (+ 10 20)))
(print (> 10 20 30))
(print (< 10 20 30))
(print (if T 10 300))
(print (if NIL 10 300))
(print (if (and (> 10 20) (= 0 0)) "foo" "bar"))
(princ "Submit your value: ")
(read)
(write (* (read) 2))

(print (1+ 10))
