;;; pkg-provider.el --- Slim package provider

(defclass pkg-provider ()
  (())
  "Slim package provider interface"
  :abstract t)

(cl-defgeneric pkg-list ((provider pkg-provider))
  "Generic function to provide a list of packages to be installed")

(cl-defgeneric pkg-configure ((provider pkg-provider))
  "Generic function to configure the packages after installation")

(provide 'pkg-provider)

;;; pkg-provider.el ends here
