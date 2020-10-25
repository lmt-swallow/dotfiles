; remove line by C-k
(setq kill-whole-line t)
; show buffer list on minibuffer
(prefer-coding-system 'utf-8)
; tabs to spaces
(setq-default indent-tabs-mode nil)
(custom-set-variables '(tab-width 4))
; (yes,no)->(y,n)
(fset 'yes-or-no-p 'y-or-n-p)
; shell pop
(global-set-key "\C-t" 'shell-pop)
; go to forward tab on tabbar
(global-set-key [C-tab] 'tabbar-forward)
; Cmd: meta -> super
(when (eq system-type 'darwin)
    (setq ns-command-modifier (quote meta)))
