;;; init-linum.el --- 

;; Copyright 2013 exsaber
;;
;; Author: yubinexsaber@gmail.com
;; Version: $Id: init-linum.el,v 0.0 2013/12/16 08:24:44 yubin Exp $
;; Keywords: 
;; X-URL: not distributed yet

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

;;; Commentary:

;; 

;; Put this file into your load-path and the following into your ~/.emacs:
;;   (require 'init-linum)

;;; Code:

(require 'init-utils)

(exsaber/add-hooks
 `(find-file-hook help-mode-hook Man-mode-hook log-view-mode-hook chart-mode-hook
                  compilation-mode-hook gdb-mode-hook lisp-interaction-mode-hook
                  browse-kill-ring-mode-hook completion-list-mode-hook hs-hide-hook
                  inferior-ruby-mode-hook custom-mode-hook Info-mode-hook svn-log-edit-mode-hook
                  package-menu-mode-hook dired-mode-hook apropos-mode-hook svn-log-view-mode-hook
                  diff-mode-hook emacs-lisp-mode-hook ibuffer-mode-hook html-mode-hook
                  w3m-mode-hook data-debug-hook debugger-mode-hook text-mode-hook color-theme-mode-hook
                  semantic-symref-results-mode-hook sh-mode-hook groovy-mode-hook)
 (lambda()
   (unless (eq major-mode 'image-mode)
     (linum-mode 1))))


(provide 'init-linum)
;;; init-linum.el ends here
