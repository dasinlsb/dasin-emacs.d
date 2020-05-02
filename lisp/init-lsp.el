;;; init-lsp.el --- Setup lsp
;;; Commentary:
;;; Code:

(setq lsp-keymap-prefix "C-c l")

(require-package 'lsp-mode)

;; lsp-ui
(require-package 'lsp-ui)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

;; which-key
(after-load 'which-key
  (progn
    (diminish 'which-key-mode)
    (add-hook 'lsp-mode 'lsp-enable-which-key-integration)
    ))

(provide 'init-lsp)
;;; init-lsp.el ends here
