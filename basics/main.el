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

;; 1+ is a function in lisp
(let ((x 99))
  (setq x (1+ x)))

(add-two 9 9)

(switch-to-buffer "*Messages*")

(with-output-to-temp-buffer "*my temp*"
  (print "hello Sunil")
  (switch-to-buffer "*my temp*"))

(kill-buffer "*my temp*")

;; ==============

;; pair/ cons
(setq pair '(a . b))
(car pair)

;; lists
(setq my-list '(1 2 3 4 5 6))

;; vector
(setq my-vec [1 2 3 (+ 1 1)])

(type-of my-list)

(format t "~a" "sunil")


(defun print-list (&optional &key x y z)
  (message "%S" (list &key x y z)))

(print-list 1 2 3)

(defclass foo ()
  ( ) "Doc String")

(make-instance 'foo)

;; (defgeneric)
;; (deftype)
;; (defmethod)
;; (defstruct)
;; (defvar)
;; (defparameter)
;; (defmacro)
;; (defconst)
;; (defun)
;; (defsetf)
;; (defalias)

(defun sum-all (&rest numbers)
  (funcall #'+ numbers))

(sum-all 1 2 3 4 5 6 7)

(defun test-optional2 (a b &optional b c d e)
  (list :a a :b b :c c :d d :e e))

(test-optional2 0 1 2 3 4 5 )

'(:key1 value1 :key2 value2 :key3 1002.23 :key4 (a b c d e))

'((a . b) (x . y) (2 . 3) (4 . (1 2 3 4 5)))

'((a  b) (x  y) (2  3) (4  (1 2 3 4 5)))

(string-width "sunil")

(make-string 5 ?x)

(+ 1 2 3 4 5 6 7)

(defalias 'map 'mapcar)

(map #'(lambda (x) (1+ x)) '(1 2 3 4))
(mapcar #'(lambda (x) (1+ x)) '(1 2 3 4))

(defun test-cl-case (operation x y)
  (cl-case operation
    (:mul (* x y))
    (:add (+ x y))
    (:sub (- x y))
    (:div (/ x y))
    (otherwise nil)))

(test-cl-case :mul 2 10)

(setq kk '(:mul 2 10))

(type-of (car kk))


(flet ((times-2 (function (lambda (x)
                  (* 2 x)))))
  (times-2 2))

(let ((a 99))
  (message "%d" a))


(defstruct account id name balance)
(make-account :id 3434 :name "John" :balance 1000.34)
(account-name user1)


(foo boo)

`("the product of 3 and 4 is" ,(* 3 4))

(defmacro λ (args body)
  `(lambda ,args ,body))

(λ (x) (1+ x) )
