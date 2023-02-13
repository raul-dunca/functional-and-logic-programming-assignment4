;gnu clisp  2.49.60


(defun minim (a m)
    (cond
        ((null a) m)  
        ((< (car a) m) (minim (cdr a) (car a)))
        (T (minim (cdr a) m))
    )
)

(defun FindAllPoz (a e n)
    (cond
        ((null a) ())  
        ((= (car a) e) ( cons n (FindAllPoz (cdr a) e (+ 1 n))))
        (T (FindAllPoz (cdr a) e (+ 1 n)))
    )
)

(defun main (a)
    (cond
        (T ( FindALLPoz a (minim a 9999) 0))
    )
)

(print (minim '(3 2 2 5 2 3) 10))
(print (FindAllPoz '(3 2 2 5 2 3) 2 0))
(print (main '(1 3 2 2 1 5 2 1 3 1)))
