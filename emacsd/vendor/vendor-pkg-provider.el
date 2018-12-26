;; vendor package provider

(require 'pkg-provider)

(defclass vendor-pkg-provider (pkg-provider)
  (())
  "vendor provided packages")

(cl-defmethod pkg-list ((provider vendor-pkg-provider))
  "These are already installed externally such as git submodules etc."
  nil)

(provide 'vendor-pkg-provider)
