## Terminologies
### Autoload

Lazy loading of the package on the first time function invocation

### require

Loads the packages if not loaded already. Optimized ```load-file```. Similar to import statement in java.

### provide

Export the package/ module for usage. Similar to javascript export (public keyword in java) and import statements.

### load-file

Force load the file or package even if it's already loaded.

## Packaging

To write a package you need to have the header in the format

``` text
;;; some-package.el --- describe the package here.

;; Copyright (C) <date, author>

;; Author:
;; URL:
;; Version:

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

;;; Code:

(provide 'some-package)

;;; some-package.el ends here

```

If the package you are writing is a pretty hefty library then consider lazy loading on demand. so that emacs won't take a lot of time trying to initialize your package. Take advantage of the
```;;;### autoload``` keyword to make automatically make the package to be loaded on demand.

Now, to install the package locally (if it's not exported to the melpa repository yet), open the package file in emacs and run

``` shell
M-x package-install-from-buffer
```

that's ging to install the package to ```~/.emacs.d/``` and modifies the ```init.el``` to initialize the package whenever emacs is loaded.

### Testing

If you don't want to install the package and still be able to test then you can do

``` shell
M-x update-file-autoloads
```

Point to the package file and give the autoloads a name to be saved as. Then you can add the autoloads file to the ```load-path``` and do ```require```.
