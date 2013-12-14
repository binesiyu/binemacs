(require 'template)


;(setq template-subdirectories '("~/.emacs.d/templates"))
(setq template-auto-insert t)
(template-initialize)

(setq template-default-directories (list (concat user-emacs-directory "templates/")))

;;command to ido
(dolist (cmd '(ido-select-text ido-magic-forward-char
			       ido-exit-minibuffer))
  (add-to-list 'template-find-file-commands cmd))

(provide 'init-template)
