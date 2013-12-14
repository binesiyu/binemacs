(require 'tabbar)


(tabbar-mode 1)

;; 设置tabbar外观
;; 设置默认主题: 字体, 背景和前景颜色，大小
;(set-face-attribute 'tabbar-default nil
;		    :family "DejaVu Sans Mono"
;		    :background "gray80"
;		    :foreground "gray30"
;		    :height 1.0
;		    )
;; 设置左边按钮外观：外框框边大小和颜色
(set-face-attribute 'tabbar-button nil
		    :inherit 'tabbar-default
		    :box '(:line-width 1 :color "yellow70")
		    )
;; 设置当前tab外观：颜色，字体，外框大小和颜色
(set-face-attribute 'tabbar-selected nil
		    :inherit 'tabbar-default
		    :foreground "DarkGreen"
		    :background "LightGoldenrod"
		    :box '(:line-width 2 :color "DarkGoldenrod")
		    :overline "black"
		    :underline "black"
		    :weight 'bold
		    )
;; 设置非当前tab外观：外框大小和颜色
(set-face-attribute 'tabbar-unselected nil
		    :inherit 'tabbar-default
		    :box '(:line-width 2 :color "#00B2BF")
		    )

;(setq tabbar-ruler-global-tabbar 't) ; If you want tabbar
;(setq tabbar-ruler-global-ruler 't) ; if you want a global ruler
;(setq tabbar-ruler-popup-menu 't) ; If you want a popup menu.
;(setq tabbar-ruler-popup-toolbar 't) ; If you want a popup toolbar
;(require 'tabbar-ruler)

(provide 'init-tabbar)
