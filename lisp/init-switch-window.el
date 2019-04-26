(use-package switch-window
  :bind (("C-x o" . switch-window)
	 ("C-x 0" . switch-window-then-delete)
	 ("C-x 1" . switch-window-then-maximize)
	 ("C-x 2" . switch-window-then-split-below)
	 ("C-x 3" . switch-window-then-split-right)))

(provide 'init-switch-window)

