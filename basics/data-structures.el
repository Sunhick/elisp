;; learn about emacs lisp data structures here.
;; sequences : list and vectors

;; vectors
(defvar v [1 2 3 4 [5 6]])
["Yes" "No" "Si" "pardon" ,v]
(let ((x (make-vector 5 0))))

;; lists
'(1 2 3 5)
(quote ("sunil" "ram" "john" "mike"))
(list 1 2 3 (+ 4 4))
(list 1 (+ 1 1) 3)

;; pairs / associate lists or alist
'( (apple . "apple")
   (orange . "orange")
   (nine . 9))

;; lambda functions
(let ((fn (lambda ()
            (message "Hi from lambda function"))))
  (funcall fn))

(cl-flet ((fn (lambda (name)
                (message "Hello from lambda! %s" name))))
  (fn "Welcome!"))

(let ((bn (lambda (a b)
            (+ a b))))
  (apply bn '(1 1))
  (funcall bn 6 7))

(let ((f (lambda (a b) (+ a b))))
  (apply f '(1 2)))

;; https://stackoverflow.com/questions/36039840/elisp-bind-a-lambda-in-a-let-and-execute-it
(let ((f (lambda (a b) (+ a b))))
  (funcall f 1 2)
  (apply f '(1 2)))

;; Supported only in lisp-1 not in lisp-2 (most recent)
;; (let ((f (lambda (a b) (+ a b))))
;;   (f 1 2))

;; dolist
(let ((x '(1 2 3 4 5 6)))
  (dolist (each x)
    (message "Element: %d" each)))

;; dotimes
(let ((x 9))
  (dotimes (e x)
    (message "iteration: %d" e)))

;; mapcar and mapc

;; catch and throw
(defun catch-and-throw()
  (catch 'err
    (let ((age 10))
      (when (= age 10)
        (progn
          (message "Age is 10")
          (throw 'err 10)))))
  (message "caught the exception."))

(catch-and-throw)


;; association list and property list (plist)
(setq x
      '(("mary" . 23)
        ("john" . 24)
        ("smith" . 33)))
(assoc "john" x)
(car (assoc "john" x))
(cdr (assoc "john" x))

(setq p '(a 1 b 4))
(plist-get p 'b)
(dolist (e p)
  (message "%s" e))

;; symbol property list
(setplist 'ff '(a 1 b 2))
(symbol-plist 'ff)
(put 'ff 'xx 5)
(get 'ff 'xx)


;; hash tables
(let ((myHash (make-hash-table :test 'equal)))
  (puthash 'aa 9 myHash)
  (gethash 'bb myHash)
  (gethash 'bb myHash 10))

;; check out for like support from cl package
;; (require 'cl)
;; loop
