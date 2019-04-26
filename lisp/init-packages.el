;; package management
(when (>= emacs-major-version 24)
  (require `package)
  (package-initialize)
  (setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			   ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			   ("org" . "http://orgmode.org/elpa/"))))

(require 'cl)

(defvar my/packages '(
		      2048-game
		      company
		      company-irony
		      company-irony-c-headers
		      counsel
		      expand-region
		      flycheck
		      flycheck-irony
		      haskell-mode
		      helm-ag
		      htmlize
		      hungry-delete
		      irony
		      irony-eldoc
		      markdown-mode
		      openwith
		      popwin
		      proof-general
		      swiper
		      switch-window
		      use-package
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
