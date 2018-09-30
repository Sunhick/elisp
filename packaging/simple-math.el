;;; simple-math.el --- A simple package that demonstrate how to write emacs lisp
;;; packages that could be submitted to the melpa / elpa etc repositories.

;; Copyright (C) 2018-2019 Sunil Murthy

;; Author: Sunil Murthy
;; URL: https://github.com/sunhick/elisp.git
;; Version: 0.0.1

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code: A simple math package to demonstrate the use of emacs packaging

;;;###autoload
(defun simple-add (a b)
  "Adds two numbers"
  (interactive)
  (+ a b))

(defun simple-sub (a b)
  "subtracts two numbers"
  (interactive)
  (- a b))

(provide 'simple-math)

;;; simple-math.el ends here
