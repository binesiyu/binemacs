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

;;editing
(require-package 'diminish)
(require-package 'whole-line-or-region)
(require-package 'whitespace-cleanup-mode)
(require-package 'mic-paren)
(require-package 'expand-region)


(provide 'init-package)
