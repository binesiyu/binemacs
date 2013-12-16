;;window system -- remove visual cruft

(when window-system
      (tooltip-mode -1)
      (tool-bar-mode -1)
      (menu-bar-mode -1)
      (blink-cursor-mode -1)
      (setq frame-title-format '(buffer-file-name "%f" ("%b"))))


;;set some mist setting

(setq visible-bell t)

;; no duplicates kill-ring
(setq kill-do-not-save-duplicates t)

;; echo key now
(setq echo-keystrokes 0.1)

;; set scroll-margin
(setq scroll-margin 3
      scroll-conservatively 10000)

;; no scroll-bar
;;(customize-set-variable 'scroll-bar-mode nil)
(when (fboundp 'set-scroll-bar-mode)
      (set-scroll-bar-mode nil))

;; no startup-message
(setq inhibit-startup-message t)
;(setq initial-scratch-message "")

;; no bell
(setq ring-bell-function 'ignore)

;;set browser you use

(setq browse-url-browser-function 'browse-url-firefox)
;; (setq browse-url-browser-function 'browse-default-macosx-browser)
;; (setq browse-url-browser-function 'browse-default-windows-browser)
;; (setq browse-url-browser-function 'browse-default-kde)
;; (setq browse-url-browser-function 'browse-default-epiphany)
;; (setq browse-url-browser-function 'browse-default-w3m)
;; (setq browse-url-browser-function 'browse-url-generic
;;       browse-url-generic-program "conkeror")


;;set default yes-or-no-p to y-or-n-p
;;(defalias 'yes-or-no-p 'y-or-n-p)
(fset 'yes-or-no-p 'y-or-n-p)

;;show line num
;;(global-linum-mode 1)

;; auto-compression
(auto-compression-mode t)

;;default major-mode
(setq default-major-mode 'text-mode)

;;hide passwd
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt)

;;mouse
(mouse-avoidance-mode 'animate)

(provide 'init-misc)
