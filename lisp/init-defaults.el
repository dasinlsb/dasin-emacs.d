(setq inhibit-splash-screen 1)
(tool-bar-mode -1)
(global-hl-line-mode 1)
(setq make-backup-files nil)
(scroll-bar-mode -1)
(setq auto-save-default nil)

;; quickly open init.el
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))


(recentf-mode 1)
(setq recentf-max-menu-item 10)

(require 'hungry-delete)
(global-hungry-delete-mode)

(fset 'yes-or-no-p 'y-or-n-p)


;; openwith
;; -------
(require 'openwith)
(openwith-mode t)
(when (eq system-type 'windows-nt)
  (setq openwith-associations
	(list
	 (list (openwith-make-extension-regexp
		'("html"))
	       "chrome"
	       '(file))
	 )
	)
  )

;; org-mode truncate
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))


(provide 'init-defaults)
