;gnu clisp  2.49.60


(defun minim (a m)
    (cond
        ((null a) m)  
        ((< (car a) m) (minim (cdr a) (car a)))
        (T (minim (cdr a) m))
    )
)

(defun RemFirstOcc (a e)
    (cond
        ((null a) ())  
        ((= (car a) e) (RemFirstOcc (cdr a) -10000))
        (T ( cons (car a) (RemFirstOcc (cdr a) e)))
    )
)

(defun sorting (a)
    (cond
        ((null a) ())  
        (T ( cons (minim a 99999) (sorting (RemFirstOcc a (minim a 9999)))))
    )
)

(print (minim '(3 2 2 5 2 3) 10))
(print (RemFirstOcc '(3 2 2 5 2 3) 5))
(print (sorting '(13 2 2 3 5 2 -1 3)))
