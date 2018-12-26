;;; shape.el --- interface for shapes

(defclass Shape ()
  ((id
   :type integer
   :initform 0
   :initarg :id
   :documentation "unique identifer"
   :abstract t))
  "Abstract class representing the shape class")

(cl-defgeneric area ((s Shape))
  "Generic area function")

;; (cl-defmethod area ((s Shape))
;;   "Generic area function"
;;   (message "Dummy implementation"))

(provide 'shape)

;;; shape.el ends here
