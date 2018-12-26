;;; main.el

;; keywords: dyanmic dispatch, inheritance, interfaces
(load-file "shape.el")
(load-file "circle.el")
(load-file "non-shape.el")

(require 'shape)
(require 'circle)
(require 'non-shape)

(setq m (Shape :id 9))
(area m)

(setq n (NonShape))
(area n)

(let ((c (Circle :id 2 :radius 3.0))
      (e (Shape :id 3)))
  (area c)
  (area e))


