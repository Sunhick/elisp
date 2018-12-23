;; structs
(defstruct (car (:print-function print-car))
  (model "empty")
  (year 2000)
  (engine "no-engine"))

(defvar ferrari (make-car :model "white" :year 2018 :engine "superV8 M100"))
(message "%S" ferrari)

(setq kk (make-car :model "no" :year 1999 :engine "god"))
(car-model kk)

(defvar bmw (make-car))
(setf (car-model bmw) "Red-roarer")
(setf (car-year bmw) "2018")
(setf (car-engine bmw) "v8 super Mk")
(message "%s" bmw)

(defun print-car(r)
  message("--- %s --- %s --- %s" (car-model r) (car-year r) (car-engine r)))


(defvar foo 42)
(if (not (numberp foo))
    (message "foo is a number")
  (message "Foo isn't a number"))

(defstruct person
  "A person structure."
  name
  (age 0)
  (height 0.0))

(person-p (make-person))

;; classes

;; generic
(defgeneric f (x y))
(defmethod f ((x integer) y) 1)

(f 1 2.0)

(defmethod f ((x integer) (y string)) 2)
(f 1 "2.0")

;; macros

;; clisp extensions

;;
