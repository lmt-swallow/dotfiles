(use-package php-mode)
(use-package company-php)
(add-hook 'php-mode-hook
          '(lambda ()
             (company-mode t)
             (ac-php-core-eldoc-setup)
             (make-local-variable 'company-backends)
             (add-to-list 'company-backends 'company-ac-php-backend)))
