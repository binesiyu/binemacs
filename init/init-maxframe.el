(require 'maxframe)

(defvar frame-state nil "State of frame, t means maximized, and nil means not maximized.")

(defadvice maximize-frame (after maxframe-setstatus)
  (setq frame-state t))

(defadvice restore-frame (after restore-setstatus)
  (setq frame-state nil))

(defun toggle-maximize-frame ()
  "Toggle maximize frame."
  (interactive)
  (let ((state frame-state))
    (if frame-state
        (restore-frame)
      (maximize-frame))
    (setq frame-state (not state))))

(add-hook 'after-init-hook 'maximize-frame)


(setq use-file-dialog nil)
(setq use-dialog-box nil)

(provide 'init-maxframe)
