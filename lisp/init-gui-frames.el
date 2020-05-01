;;; init-gui-frames.el --- GUI
;;; Commentary:
;;; Code:

(setq inhibit-startup-screen t)

(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode nil))
(when (fboundp 'menu-bar-mode)
    (menu-bar-mode -1))

(setq frame-title-format "emacs@%b")

(provide 'init-gui-frames)
;;; init-gui-frames.el ends here
