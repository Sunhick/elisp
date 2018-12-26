;;; circle.el --- circle class

(load-file "shape.el")

(defclass Circle (Shape)
  ((radius
    :type float
    :initform 0.0
    :initarg :radius))
  "Circle class")

(cl-defmethod area ((s Circle))
  "Area of a circle"
  (message "Circle area: %s" (* 3.14 (expt (oref s radius) 2))))

(provide 'circle)

;;;; circle.el ends here
