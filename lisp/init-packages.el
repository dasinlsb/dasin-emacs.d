;; package management
(when (>= emacs-major-version 24)
  (require `package)
  (package-initialize)
  (setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			   ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/"))))

(require 'cl)

(defvar my/packages '(
		      2048-game
		      company
		      expand-region
		      haskell-mode
		      hungry-delete
		      markdown-mode
		      openwith
		      popwin
		      proof-general
		      smex
		      switch-window
		      ) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
  (loop for pkg in my/packages
    when (not (package-installed-p pkg)) do (return nil)
    finally (return t)))

(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))



(provide 'init-packages)
