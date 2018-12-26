;; object oriented emacs configurations

(defvar slim-dir (file-name-directory load-file-name)
  "Slim emacs root directory")

(defvar slim-base-dir (expand-file-name "slim" slim-dir)
  "Emacs slim directory hosting the minimalistic configurations")

(defvar slim-themes-dir (expand-file-name "themes" slim-dir)
  "Slim emacs themes directory")

(defvar slim-addon-dir (expand-file-name "addon" slim-dir)
  "Slim emacs addtional / addon packages")

(defvar slim-vendor-dir (expand-file-name "vendor" slim-dir)
  "Vendor provided packages")

(add-to-list 'load-path slim-base-dir)
(add-to-list 'load-path slim-themes-dir)
(add-to-list 'load-path slim-addon-dir)
(add-to-list 'load-path slim-vendor-dir)

(require 'slim-configurator)
