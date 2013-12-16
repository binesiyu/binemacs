;; -*- coding: utf-8 -*-
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/init"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisps"))


;; Measure startup time
(require 'init-time)

;;buildin-package
(require 'init-buildin)

;;my
(require 'init-my)

;;util
(require 'init-utils )

;;init-elpa
(require 'init-elpa)
(require 'init-package)

;;editing
(require 'init-editing)

;;emaci
(require 'init-emaci)

;;linum
(require 'init-linum)

;;ido
(require 'init-ido)

;;window
(require 'init-window)

;;buffer
(require 'init-buffer)
(require 'init-uniquify)
(require 'init-move)

;;ac
(require 'init-template)
(require 'init-yasnippet)
(require 'init-auto-complete)

;;lang
(require 'init-elsp)

;;org
(require 'init-org)

;;tabbar
(require 'init-tabbar)

;;session
(require 'init-sessions)

;;frame
(require 'init-maxframe)

;;font
(require 'init-font)

;;theme
(require 'init-theme)

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

