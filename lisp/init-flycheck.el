(use-package flycheck
  :config
  (global-flycheck-mode))

(use-package flycheck-irony
  :after (irony flycheck)
  :config
  (add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

(provide 'init-flycheck)

