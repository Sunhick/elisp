(load-file "circle.el")

(require 'circle)

;; global set
(setq m (circle :id "first-circle" :radius 3.0))
(circle-area m)

;; scoped set
(let ((c (circle :id "first-circle" :radius 3.0)))
  (message "Area of circle: %s" (circle-area c)))
