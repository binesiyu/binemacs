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

;;buffer-move

(define-prefix-command 'ctl-x-m-map)
(define-key ctl-x-m-map (kbd "u") 'buf-move-up)
(define-key ctl-x-m-map (kbd "d") 'buf-move-down)
(define-key ctl-x-m-map (kbd "l") 'buf-move-left)
(define-key ctl-x-m-map (kbd "r") 'buf-move-right)
(define-key ctl-x-m-map (kbd "t") 'split-window-3)
(define-key ctl-x-m-map (kbd "f") 'split-window-4)
(define-key ctl-x-m-map (kbd "w") 'change-split-type-3)
(define-key ctl-x-m-map (kbd "b") 'roll-v-3)

(global-set-key (kbd "C-x m") 'ctl-x-m-map)

(global-set-key "\C-x2" 'exsaber/split-window-v)
(global-set-key "\C-x3" 'exsaber/split-window-h)

(provide 'init-binding)
