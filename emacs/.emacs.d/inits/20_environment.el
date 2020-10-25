;; utf-8
(set-language-environment  'utf-8)
(prefer-coding-system 'utf-8)

;; disable making backup
(setq make-backup-files nil)
(setq backup-inhibited t)
(setq auto-save-default nil)

;; looks
(show-paren-mode t)

;; 行番号を常に表示させる
(global-linum-mode)
(setq linum-format "%4d ")

(setq hl-line-face 'underline)
(global-hl-line-mode)
