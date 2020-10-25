(use-package ac-python)
(add-hook 'python-mode-hook
	      '(lambda()
	         (setq indent-tabs-mode nil)
	         (setq indent-level 4)
	         (setq python-indent 4)))
