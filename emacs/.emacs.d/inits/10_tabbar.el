(require 'tabbar)
 (setq tabbar-buffer-groups-function
       (lambda (b) (list "All Buffers")))
(set-face-attribute
   'tabbar-default-face nil
   :background "gray90"
)
(set-face-attribute
   'tabbar-unselected-face nil
   :background "gray90"
   :foreground "black"
   :box nil)
(set-face-attribute
   'tabbar-selected-face nil
   :background "black"
   :foreground "white"
   :box nil)
(setq tabbar-home-button-enabled "")
(setq tabbar-scroll-left-button-enabled "")
(setq tabbar-scroll-right-button-enabled "")
(setq tabbar-scroll-left-button-disabled "")
(setq tabbar-scroll-right-button-disabled "")
(tabbar-mode)
