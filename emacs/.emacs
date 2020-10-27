;;; init.el --- Initialization file for Emacs
;;; Commentary: Emacs Startup File --- initialization for Emacs

;; bootstrap
;;;;;;;;;;;;;;;

;; set up bootstrap
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; set up user-package
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

;; launch emacs server
(require 'server)
(unless (server-running-p)
  (server-start))

;; disable making backup
(setq make-backup-files nil)
(setq backup-inhibited t)
(setq auto-save-default nil)

;; visual settings
;;;;;;;;;;;;;;;

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; set theme
(use-package solarized-theme
  :ensure t)
(load-theme 'solarized-dark t)
(if (display-graphic-p)
    "";
    (custom-set-faces
     ;; custom-set-faces was added by Custom.
     ;; If you edit it by hand, you could mess it up, so be careful.
     ;; Your init file should contain only one such instance.
     ;; If there is more than one, they won't work right.
     '(default ((t (:background "nil"))))
     '(linum ((t (:background "nil"))))))


;; set modeline
;; this requires `M-x all-the-icons-install-fonts`
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

;; strongten parent
(show-paren-mode t)

;; always show line number
(global-linum-mode)
(setq linum-format "%4d ")

;; show a line under curosr
(setq hl-line-face 'underline)
(global-hl-line-mode)

;; autocomplete & linter
;;;;;;;;;;;;;;;

;; company: base of autocompletion
(use-package company)
(global-company-mode)

(setq company-transformers '(company-sort-by-backend-importance))
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 3)
(setq company-selection-wrap-around t)
(setq completion-ignore-case t)
(setq company-dabbrev-downcase nil)
(setq company-tooltip-align-annotations t)

;; keybindings
(global-set-key (kbd "C-M-i") 'company-complete)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key company-search-map (kbd "C-n") 'company-select-next)
(define-key company-search-map (kbd "C-p") 'company-select-previous)
(define-key company-active-map (kbd "C-s") 'company-filter-candidates)
(define-key company-active-map (kbd "C-i") 'company-complete-selection)
(define-key company-active-map [tab] 'company-complete-selection)
(define-key company-active-map (kbd "C-f") 'company-complete-selection)
(define-key emacs-lisp-mode-map (kbd "C-M-i") 'company-complete)

;; flycheck: on-the-fly syntax checker
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

;; PHP
;; this requires php executable found in PATH.
(use-package ac-php)
(use-package php-mode
  :init 
  (add-hook 'php-mode-hook
	    '(lambda ()
	       ;; base
	       ;; nope

	       ;; autocomplete
	       (require 'ac-php)
	       (setq ac-sources '(ac-source-php))

	       ;; fmt
	       ;; TODO
	       
	       ;; additional
	       (define-key php-mode-map (kbd "M-]") ; go
		 'ac-php-find-symbol-at-point)
	       (define-key php-mode-map (kbd "M-[") ; back
		 'ac-php-location-stack-back)
	       (ac-php-core-eldoc-setup)	       
	       )))


;; TypeScript
;; it needs `apt-get install node`
(use-package tide
  :init 
  (add-hook 'typescript-mode-hook
	    '(lambda ()
	       ;; base
	       (interactive)
	       (tide-setup)

	       ;; autocomplete
	       ;; tide-setup includes this settings

	       ;; fmt
	       (add-hook 'before-save-hook 'tide-format-before-save)

	       ;; additional
	       (tide-hl-identifier-mode +1)
	       (eldoc-mode +1))))

;; JavaScript
;; this requires `npm  install -g eslint`
(use-package js2-mode
  :init
  (add-hook 'js2-mode-hook
	    '(lambda ()
	       ;; base
	       ;; nope

	       ;; autocomplete
	       ;; TODO

	       ;; fmt
	       ;; TODO

	       ;; additional
	       ;; TODO
	       )))

;; Web things
(use-package web-mode
  :init
  (add-hook 'web-mode-hook
	    '(lambda ()
	       ;; base
	       (add-to-list 'auto-mode-alist '("\\.p?html?\\'" . web-mode))
	       (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
	       (add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
	       (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
	       (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

	       ;; autocomplete
	       ;; TODO

	       ;; fmt
	       ;; TODO

	       ;; additional
	       ;; nope
	       )))

;; Golang

(use-package go-autocomplete)
(use-package go-mode
  :init
  (add-hook 'go-mode-hook
	    '(lambda ()	       
	       ;; base

	       ;; autocomplete
	       (require 'go-autocomplete)

	       ;; fmt
	       (add-hook 'before-save-hook 'gofmt-before-save)
  
	       ;; additional
	       ;; nope
	       )))
  

;; yaml
;; this requires yamllint executable found in PATH.
(use-package yaml-mode
  :init
  (add-hook 'yaml-mode
	    '(lambda ()
	       ;; base
	       ;; nope

	       ;; autocomplete
	       ;; nope
	       
	       ;; fmt
	       ;; nope
	       
	       ;; additional
	       ;; nope
	       )))	       

;; json
(use-package json-mode
  :init
  (add-hook 'json-mode
	    '(lambda ()
	       ;; base
	       ;; nope

	       ;; autocomplete
	       ;; nope
	       
	       ;; fmt
	       ;; TODO
	       
	       ;; additional
	       ;; nope
	       )))

;; json
(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init
  (add-hook 'markdown-mode
	    '(lambda ()
	       ;; base
	       ;; nope

	       ;; autocomplete
	       ;; nope
	       
	       ;; fmt
	       ;; TODO
	       
	       ;; additional
	       ;; nope
	       )))

;; json
(use-package fish-mode
  :ensure t
  :mode ("\\.fish\\'" . fish-mode)
  :init
  (add-hook 'fish-mode
	    '(lambda ()
	       ;; base
	       ;; nope

	       ;; autocomplete
	       ;; nope
	       
	       ;; fmt
	       ;; TODO
	       
	       ;; additional
	       ;; nope
	       )))

;; TODO: add more languages

;; project management
;;;;;;;;;;;;;;;

(use-package helm)

(use-package projectile
  :init
  (setq projectile-keymap-prefix (kbd "C-c p"))
  :config
  (projectile-mode +1))
(projectile-global-mode)

(use-package helm-projectile)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(use-package neotree)
(setq neo-theme (if (display-graphic-p) 'asciin 'arrow))
(setq neo-persist-show t)
(setq neo-smart-open t)
(setq neo-smart-open t)
(global-set-key "\C-o" 'neotree-toggle)

;; edit buffer
;;;;;;;;;;;;;;;

(use-package undo-tree)
(global-undo-tree-mode t)
(global-set-key (kbd "M-/") 'undo-tree-redo)(require 'undo-tree)
(global-undo-tree-mode t)
(global-set-key (kbd "M-/") 'undo-tree-redo)

;; terminal
;;;;;;;;;;;;;;;

;; TODO

;; tmux
;;;;;;;;;;;;;;;

(global-set-key "\M-[1;2A" 'windmove-up)
(global-set-key "\M-[1;2B" 'windmove-down)
(global-set-key "\M-[1;2C" 'windmove-right)
(global-set-key "\M-[1;2D" 'windmove-left)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" default))))
