;;
;; Emacs lisp programming
;;

;; load the common lisp extension library. It's provides some useful
; library functions and macros.
;; see https://www.gnu.org/software/emacs/manual/html_node/cl/
(require 'cl)
cl
(mapcar 'buffer-name (buffer-list))

(global-hl-line-mode +1)

;; learning how to use smartparens
[] {} () ""
[] {} () ""

;; latex
\{asdfg-hjkkl\}
\{\}
\(\)
\"\"

[] () {} ""
\{\}
\(\)


(require 're-builder)
(setq reb-re-syntax 'string)
