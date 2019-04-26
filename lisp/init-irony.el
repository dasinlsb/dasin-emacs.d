(use-package irony
  :config
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options))

(use-package irony-eldoc
  :after eldoc irony
  :config
  (add-hook 'irony-mode-hook #'irony-eldoc))

(provide 'init-irony)
