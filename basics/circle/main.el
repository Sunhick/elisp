(load-file "circle.el")

(require 'circle)

;; global set
(setq m (circle :id "first-circle" :radius 3.0))
(circle-area m)

;; scoped set
(let ((c (circle :id "first-circle" :radius 3.0)))
  (message "Area of circle: %s" (circle-area c)))


;; using load loads
(add-to-list 'load-path ".")
(update-file-autoloads
 "/Users/Sunny/prv/github/elisp/basics/circle/circle.el"
 t
 "/Users/Sunny/prv/github/elisp/basics/circle/circle-autoloads.el")
(require 'circle-autoloads)

(boundp circle)
(featurep circle)
