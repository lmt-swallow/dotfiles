(use-package helm)
(helm-mode 1)
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "C-x C-r") 'helm-recentf)
(define-key helm-map (kbd "C-h") 'helm-ff-delete-char-backward)
(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)