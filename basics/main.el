;;
;; Emacs lisp programming basics
;;

;; Lisp programming follows prefix notation meaning operation will
;; be followed by the arguments to it.
(+ 10 5)

;; nil, () evaluates to false
;; anything else will be true
(= 9 9)
(/= 8 9)
(not (= 9 9))

;; Global variables
(setq my-age 9 my-name "Sunil")
(message "%s is %d years old!" my-name my-age)

;; local variables
(let (a b c)
  (setq a 1)
  (setq b 2)
  (setq c 5)
  (message "%d %d %d" a b c))

(let ((a 1) (b 3) (c 77))
  (message "%d %d %d" a b c))

;;if else
(if nil
    (message "It's nill")
  (message "well, it's not!"))

(if (not (= my-age 9))
    (progn                              ; true block
      (message "well you are 9 years old")
      (message "Hmm... go play in the field"))
  (progn                                ; false block
    (message "You are lying!")
    (message "Go study now")))

(when (= my-age 9)
  (message "my age is 9"))

;; loops
(let ((x 0))
  (while (< x 10)
    (message "counter is %d" x)
    (setq x (+ 1 x))))

;; Lisp always evaluate / returns the last sexpression.
(defun add-two (a b)
  "adds two numbers"
  (interactive)
  (+ a b))

(add-two 9 9)
