(global-set-key (kbd "<f2>") 'open-init-file)


;; smex
;; ----
(require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; following is my old M-x
(global-set-key (kbd "C-c C-c M-x") `execute-extended-command)
;; ----


;; switch-window
;; -------------
(require 'switch-window)
(global-set-key (kbd "C-x o") 'switch-window)
;; (global-set-key (kbd "C-x 1") 'switch-window-then-maximize)
;; (global-set-key (kbd "C-x 2") 'switch-window-then-split-below)
;; (global-set-key (kbd "C-x 3") 'switch-window-then-split-right)
(global-set-key (kbd "C-x 0") 'switch-window-then-delete)

;; (global-set-key (kbd "C-x 4 d") 'switch-window-then-dired)
;; (global-set-key (kbd "C-x 4 f") 'switch-window-then-find-file)
(global-set-key (kbd "C-x 4 m") 'switch-window-then-compose-mail)
;; (global-set-key (kbd "C-x 4 r") 'switch-window-then-find-file-read-only)

;; (global-set-key (kbd "C-x 4 C-f") 'switch-window-then-find-file)
;; (global-set-key (kbd "C-x 4 C-o") 'switch-window-then-display-buffer)

(global-set-key (kbd "C-x 4 0") 'switch-window-then-kill-buffer)
;; -----



(provide 'init-keybindings)
