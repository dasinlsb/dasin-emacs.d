(require-package 'openwith)
(setq openwith-mode t)

(after-load 'openwith
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
)


(provide 'init-openwith)
