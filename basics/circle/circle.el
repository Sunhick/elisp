;;; circle.el -- circle class implementation using EIEIO

(defconst PI 3.14159 "Mathematical constant value of PI")

;;;###autoload
(defclass circle nil
  ((id
    :type string
    :initarg :id
    :initform ""
    :documentation "Unqiue identifier for this circle")
   (radius
    :type float
    :initarg :radius
    :initform 0e0
    :documentation "Radius of the circle"))
  "Circle class")

(cl-defmethod circle-area ((c circle))
  "calculate the area of the circle"
  (* PI (expt (oref c radius) 2)))

(provide 'circle)

;;; circle.el ends here
