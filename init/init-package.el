(require-package 'session)
(require-package 'frame-restore)


;;ido
(require-package 'ido-ubiquitous)
(require-package 'smex)
(require-package 'idomenu)

;;window
(require-package 'switch-window)

;;buffer
(require-package 'buffer-move)

;;ac
(require-package 'auto-complete)
(require-package 'yasnippet)

;;theme
(when (< emacs-major-version 24)
      (require-package 'color-theme))

(require-package 'color-theme-sanityinc-solarized)

;;frame
(require-package 'maxframe)

(provide 'init-package)
