       
(defun product (a)
    (cond
        ((null a) 1)  
        ((listp (car a)) (* (product(cdr a)) (product (car a))))
        ((numberp (car a)) (* (car a) (product (cdr a))))
        (T (product (cdr a)))
    )
)

(print (product '(1 (1 (3 2)) 2 5 a (1 2 3))))


https://rextester.com/WYGZC21934