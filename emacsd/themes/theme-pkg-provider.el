;; theme pkg provider

(require 'pkg-provider)

(defclass theme-pkg-provider (pkg-provider)
  (())
  "Theme provider for emacs")

(cl-defmethod pkg-list ((provider theme-pkg-provider))
  "Install the below theme for emacs"
  '(gruvbox-theme))

(provide 'theme-pkg-provider)
