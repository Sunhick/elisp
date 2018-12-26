;; addon package provider

(require 'pkg-provider)

(defclass addon-pkg-provider (pkg-provider)
  (())
  "addon provided packages")

(cl-defmethod pkg-list ((provider addon-pkg-provider))
  "Additional packages to be installed apart from the ones
provided by slim emacs"
  '(expand-region))

(provide 'addon-pkg-provider)
