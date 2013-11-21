(when (eq window-system 'w32)
   (set-face-attribute
  'default nil :font "Consolas 10")

;; Chinese Font
   (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
                      charset
                      (font-spec :family "Microsoft Yahei" :size 14))))


(provide 'init-font)
