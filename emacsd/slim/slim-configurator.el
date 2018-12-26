;; slim emacs configurator

;; require since we use defclasses in emacs
(require 'eieio)

(require 'pkg-provider)

;; FIXME: hide the existance of *-pkg-provider.
(require 'slim-pkg-provider)
(require 'theme-pkg-provider)
(require 'vendor-pkg-provider)
(require 'addon-pkg-provider)

(defvar slim-pkg-providers
  `(,(slim-pkg-provider)
    ,(theme-pkg-provider)
    ,(vendor-pkg-provider)
    ,(addon-pkg-provider))
  "Slim list of package providers for configuring
the Emacs per users taste.")

(defun slim-pkg-install (providers)
  (dolist (provider providers)
    (message "%S" (pkg-list provider))))

(slim-pkg-install slim-pkg-providers)

(provide 'slim-configurator)
