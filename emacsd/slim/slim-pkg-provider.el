;; slim base pkg provider

(require 'pkg-provider)

(defclass slim-pkg-provider (pkg-provider)
  (())
  "Slim base package provider. These package come built-in
with slim-emacs")

(cl-defmethod pkg-list ((provider slim-pkg-provider))
  "Base packages to be installed with slim emacs"
  '(ido
    ido-completing-read+
    ido-vertical-mode))

(provide 'slim-pkg-provider)
