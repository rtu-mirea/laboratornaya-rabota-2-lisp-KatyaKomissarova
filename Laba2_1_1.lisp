(defun insert (X N LST)
   (cond ((NULL LST) (cons X LST))
      ((eq N 1) (cons X LST))
      (T (cons (car LST)
            (insert X (- N 1)
               (CDR LST)
            )
         )
      )
   )
)
(defun input ()
    (print "Список:")(print LIST)
    (print "Введите вставляемый элемент") 
    (set 'N (read))
    (print "Введите место, в которое необходимо вставить элемент") 
    (set 'P (read))
    (print "Результат:")
    (set 'LIST(insert N P LIST ))

)
(set 'LIST '(35 15 11 16 45 5 66 8))
(input)