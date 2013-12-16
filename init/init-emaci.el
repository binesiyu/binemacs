;; -*- Emacs-Lisp -*-


(require 'emaci)

(defun emaci-settings ()
  "settings for `emaci'."
  (eal-define-keys
   'emaci-mode-map
   `(("/" describe-symbol-at-point)
     ("'" switch-to-other-buffer)
     ("L" count-brf-lines)
     ("t" sb-toggle-keep-buffer)
     ("]" goto-paren)))

  (setq emaci-brief-key-defs
        (append emaci-brief-key-defs
                `(("]" goto-paren))))
  (emaci-bind-brief-keys)
  
  ;;;###autoload
  (defun switch-major-mode-with-emaci ()
    "Run `switch-major-mode' with `emaci-mode'."
    (interactive)
    (let ((emaci emaci-mode))
     ;(call-interactively 'switch-major-mode)
      (emaci-mode (if emaci nil t))))

  (eal-define-keys-commonly
   global-map
   `(("C-x q" switch-major-mode-with-emaci))))

(eval-after-load "emaci"
  `(emaci-settings))

(provide 'init-emaci)
