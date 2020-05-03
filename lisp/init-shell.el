;;; init-shell --- Support shell (eshell)
;;; Commentary:
;;; Code:

;; eshell
(require-package 'esh-autosuggest)
(add-hook 'eshell-mode-hook #'esh-autosuggest-mode)

(provide 'init-shell)
;;; init-shell ends here
