(use-package openwith
  :config
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
    ))

(provide 'init-openwith)
