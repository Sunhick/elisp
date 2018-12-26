;;; non-shape.el --- a non shape class implementation

(require 'shape)

(defclass NonShape ()
  (())
  "A empty nonshape class")

(cl-defmethod area ((n Shape))
  "Non shape area implementation"
  (message "Non shape called"))

(provide 'non-shape)
;;; non-shape.el ends here
