;; org-mode 
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
(setq org-src-fontify-natively t)

;; live reload
(global-auto-revert-mode 1)

(add-hook 'c-mode-common-hook
	  '(lambda ()
	     (require 'xcscope)))

(provide 'init-defaults)
