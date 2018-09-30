;; Add your load path here
(add-to-list 'load-path "/Users/Sunny/prv/github/elisp/packaging")

;; (load-file (expand-file-name "simple-math.el"))

(require 'simple-math-autoloads)

;; check if the simple math package is loaded.
(featurep 'simple-math)                 ; well, it won't be at this point.
(fboundp 'simple-add)                   ; since we are lazy loading.
(fboundp 'simple-sub)

;; Now, simple-add function will invoke the simple-math to be
;; loaded. meaning even simple-sub will be added to the current
;; buffer scope.
(simple-add 10 20)

;; Becomes avaialable after invoking the simple-add.
(simple-sub 20 10)

;; Every thing will be available at this point.
(featurep 'simple-math)
(fboundp 'simple-add)
(fboundp 'simple-sub)
