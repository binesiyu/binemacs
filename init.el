;; -*- coding: utf-8 -*-
(add-to-list 'load-path (expand-file-name "~/binemacs"))
(add-to-list 'load-path (expand-file-name "~/binemacs/init"))

;; Measure startup time
(require 'init-time)

(require 'init-misc)

;; Locales( setting them earlier in this file doesn't work in x)
(require 'init-locales)

(define-key global-map "\C-h" 'delete-backward-char)
(define-key global-map "\C-x/" 'help-command)
;; Local Variables:
;; no-byte-compile: t
;; End:

