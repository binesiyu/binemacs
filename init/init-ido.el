;; Use C-f during file selection to switch to regular find-file
(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point t)
(setq ido-auto-merge-work-directories-length 0)
(setq ido-use-virtual-buffers t)

(ido-ubiquitous-mode t)

(smex-initialize)

;; Allow the same buffer to be open in different frames
(setq ido-default-buffer-method 'selected-window)


(provide 'init-ido)
