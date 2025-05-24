(cons 10 50)
(defvar c (cons 10 50)) ;; define a variable
(setq c (cons 30 40)) ;; change variable values

(defvar x (cons 10 (cons 20 NIL))) 
(car x)
(cdr x)

(list 10 20 30) ;; linked list
'( 10 20 30)

(defvar lista '(10 25 8 45 -9))
(car lista) ; 10
(cdr lista) ; (25 8 45 -9)
(car (cdr lista)) ;25
(cdr (cdr lista)) ; 8 45 -9
(mapcar 'abs lista) ; 10 25 8 45 9
(mapcar (lambda (n) (* n 2)) lista) ; 20 50 16 90 -18
(mapcar 'minusp lista) ; NIL NIL NIL NIL T
(reduce '+ lista) ; 79
(reduce 'max lista) ; 45
(reduce 'mod lista)

