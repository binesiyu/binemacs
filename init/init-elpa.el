 (setq package-archives
          '(("gnu"         . "http://elpa.gnu.org/packages/")
            ("original"    . "http://tromey.com/elpa/")
            ("org"         . "http://orgmode.org/elpa/")
            ("marmalade"   . "http://marmalade-repo.org/packages/")
            ("melpa"       . "http://melpa.milkbox.net/packages/")))

(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (package-install package)
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

(package-initialize)

(provide 'init-elpa)
