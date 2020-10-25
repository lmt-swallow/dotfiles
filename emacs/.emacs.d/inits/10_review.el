(use-package review-mode)
(autoload 'review-mode "review-mode" "Re:VIEW Mode" t)
(add-to-list 'auto-mode-alist '("\\.re\\'" . review-mode))
