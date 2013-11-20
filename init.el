;; -*- coding: utf-8 -*-
(add-to-list 'load-path (expand-file-name "~/binemacs"))
(add-to-list 'load-path (expand-file-name "~/binemacs/init"))

;; Measure startup time
(require 'init-time)

;;init-elpa
(require 'init-elpa)
(require 'init-package)

;;ido
(require 'init-ido)

;;window
(require 'init-window)

;;buffer
(require 'init-buffer)

;;session
;(require 'init-sessions)

(require 'init-misc)

;;key-binding
(require 'init-binding)

;;server
(require 'init-server)

;;custom
(require 'init-custom)
;; Locales( setting them earlier in this file doesn't work in x)
(require 'init-locales)


(message "init completed in %.2fms"
         (exsaber/time-subtract-millis (current-time) before-init-time))

;; Local Variables:
;; no-byte-compile: t
;; End:

