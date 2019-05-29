

(global-set-key (kbd "M-n") 'my-window-move-down)
(global-set-key (kbd "M-p") 'my-window-move-up)

(defun my-window-move-up()
    (interactive)
    (scroll-down 3)
    (previous-line 3))

(defun my-window-move-down()
    (interactive)
    (scroll-up 3)
    (next-line 3))


(provide 'init-keybinding)
