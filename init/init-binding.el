;;like readline
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-M-h") 'backward-kill-word)

;;help
(global-set-key (kbd "C-x /") 'help-command)


;;use regex searches by default
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;;ido
(global-set-key (kbd "M-x") 'smex)

;;ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

(provide 'init-binding)
