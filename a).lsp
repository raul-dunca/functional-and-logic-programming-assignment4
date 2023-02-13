;gnu clisp  2.49.60

(defun is_in (e l)
    (cond
        ((null l) nil)
        ((= (car l) e) T)  
        (T (is_in e (cdr l)))
    )
)


(defun ReunionOfSets (a b)
    (cond
        ((null a) ())
        ((null b) ())
        ((is_in (car a) b) (cons (car a)(ReunionOfSets (cdr a) b)))  
        (T (ReunionOfSets (cdr a) b))
    )
)

(print (ReunionOfSets '(1 91 3 5) '(2 3 4 1 9 91)))
