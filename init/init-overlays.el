;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.
(defun list-overlays-at (&optional pos)
      "Describe overlays at POS or point."
      (interactive)
      (setq pos (or pos (point)))
      (let ((overlays (overlays-in (point-min) (point-max)))
            (obuf (current-buffer))
            (buf (get-buffer-create "*Overlays*"))
            (props '(priority window category face mouse-face display
                     help-echo modification-hooks insert-in-front-hooks
                     insert-behind-hooks invisible intangible
                     isearch-open-invisible isearch-open-invisible-temporary
                     before-string after-string evaporate local-map keymap
                     field))
            start end text)
        (if (not overlays)
            (message "None.")
          (set-buffer buf)
          (erase-buffer)
          (dolist (o overlays)
            (setq start (overlay-start o)
                  end (overlay-end o)
                  text (with-current-buffer obuf
                         (buffer-substring start end)))
            (when (> (- end start) 13)
              (setq text (concat (substring text 1 10) "...")))
            (insert (format "From %d to %d: \"%s\":\n" start end text))
            (dolist (p props)
              (when (overlay-get o p)
                (insert (format " %15S: %S\n" p (overlay-get o p))))))
          (pop-to-buffer buf))))



