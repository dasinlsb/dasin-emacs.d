;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Produce backtraces when errors occur: can be helpful to diagnose startup issues
;;(setq debug-on-error t)
(let ((minver "24.4"))
  (when (version< emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))
(when (version< emacs-version "25.1")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-benchmarking) ;; Measure startup time

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(require 'init-utils)

(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
(setq frame-title-format "emacs@%b")

(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(require 'init-packages)

(require-package 'diminish)

(require 'init-gui-frames)
(require 'init-flycheck)
(require 'init-recentf)
(require 'init-smex)
(require 'init-ivy)
(require 'init-hippie-expand)
(require 'init-company)
(require 'init-windows)
(require 'init-sessions)
(require 'init-isearch)

(require 'init-editing)
(require 'init-tab)

(require 'init-vc)
(require 'init-git)
(require 'init-github)

(require 'init-projectile)

(require 'init-markdown)
(require 'init-csv)
(require 'init-org)

(when (fboundp 'global-eldoc-mode)
  (add-hook 'after-init-hook 'global-eldoc-mode))

(fset 'yes-or-no-p 'y-or-n-p)

(require 'init-openwith)
(require 'init-shell)

(require 'init-themes)

(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)
;;; init.el ends here
