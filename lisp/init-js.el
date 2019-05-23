(use-package js2-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js2-jsx-mode))
  (add-to-list 'interpreter-mode-alist '("node" . js2-jsx-mode))
  (setq-default js2-basic-offset 2)
  )


(provide 'init-js)
  
