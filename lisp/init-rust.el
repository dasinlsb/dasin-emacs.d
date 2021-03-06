;;; init-rust.el --- Support for the Rust language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'rust-mode)

(setq lsp-rust-server 'rust-analyzer)

(add-hook 'rust-mode-hook #'lsp)

(when (maybe-require-package 'cargo)
  (add-hook 'rust-mode-hook 'cargo-minor-mode))

(when (maybe-require-package 'flycheck-rust)
  (after-load 'rust-mode
    (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)))

(provide 'init-rust)
;;; init-rust.el ends here
