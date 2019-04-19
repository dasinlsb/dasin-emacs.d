

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")



;; Package-Management
;; ------------------
(require 'init-packages)










(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-auto-show-menu 0.1)
 '(ac-modes
   (quote
    (emacs-lisp-mode lisp-mode lisp-interaction-mode c-mode cc-mode c++-mode coq-mode haskell-mode agda-mode agda2-mode python-mode fundamental-mode)))
 '(global-auto-complete-mode t)
 '(package-selected-packages
   (quote
    (openwith switch-window smex proof-general haskell-mode auto-complete markdown-mode hungry-delete)))
 '(show-paren-mode t)
 '(size-indication-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;; Defaults
;; --------
(require 'init-defaults)


;; Key-Bindings
;; ------------
(require 'init-keybindings)
