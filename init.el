

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package-Management
;; ------------------
(require 'init-packages)


;; temp setting
(setq inhibit-splash-screen 1)
;;(tool-bar-mode 0)
;;(menu-bar-mode 0)
;; (global-hl-line-mode 1)
(setq make-backup-files nil)
;;(scroll-bar-mode 0)
(setq auto-save-default nil)
(fset 'yes-or-no-p 'y-or-n-p)
;;(global-linum-mode t)
(show-paren-mode t)
(size-indication-mode t)
;;(set-default-font "-outline-Courier New-normal-normal-normal-mono-20-*-*-*-c-*-iso8859-1")
;; quickly open init.el
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
;; ---------


(eval-when-compile
  (require 'use-package))

(require 'init-hungry-delete)
(require 'init-recentf)
(require 'init-company)
(require 'init-openwith)
(require 'init-popwin)
(require 'init-ivy)
(require 'init-irony)
(require 'init-js)
(require 'init-switch-window)
(require 'init-expand-region)
(require 'init-flycheck)

(require 'init-theme)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (irony haskell-mode hungry-delete markdown-mode openwith proof-general switch-window))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Defaults
;; --------
(require 'init-defaults)

(require 'init-keybinding)
