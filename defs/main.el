;; defgroup - defines a group for customization. This group shows up in the
;; M-x customize RET
(defgroup some-group nil
  "some group name for the customization variables"
  :prefix "some-group-"
  :group 'languages)                    ; some-group itself is a subgroup under languages

;; defcustom - defines a customization variables. A set of variables that can
;; be modified to change the behaviour are group under defgroup.
(defcustom some-group-custom1 nil
  "customize 1."
  :type 'boolean
  :group 'some-group)                   ; belongs to some-group

;; defface - defines a face. face is anything that's related to graphics i.e
;; font, size, styles, background and foreground colors etc.
(defface some-group-type-name
  '((t (:inherit (font-lock-type-face bold)))))

;; defconst - defines a constant.

;; defparameter - defines a variable and always assigns a value.
(setq age 0)
(defparameter age 88)                   ; will be 88
(defparameter age 1)                    ; now it willbe 1

;; defvar - defines a variable and assign value only once.
(defvar name "Sunil")
(message name)
(defvar name "John")
(message name)                          ; Will still print "Sunil"

;; usually global variables
(defvar *name* (read))
(print *name*)


;; deffun - defines a function.
(defun hello (name)
  "greeting function"
  (message "Hello %s! Welcome to elisp" name))

(hello "Rani")

;; defmacro - defines a macro i.e compile time code generation
(setq val 0)
(defvar xx 99 "some 99")
(defmacro ++ (x)
  `(setq ,x (1+ ,x)))
(++ val)
(++ xx)

;; lexically scoped vs dynamically scoped variables
;; setf and setq vs defvar
;; https://stackoverflow.com/questions/8927741/whats-difference-between-defvar-defparameter-setf-and-setq
