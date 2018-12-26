;;; main.el

;; keywords: dyanmic dispatch, inheritance, interfaces
(load-file "shape.el")
(load-file "circle.el")

(require 'shape)
(require 'circle)

(setq m (Shape :id 9))
(area m)

(let ((c (Circle :id 2 :radius 3.0)) (e (Shape :id 3)))
  (area c)
  (area e))
