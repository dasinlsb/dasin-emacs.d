;;; package --- init cpp
;;; Commentary:
;;; Summary:

(require-package 'ccls)
(setq ccls-executable "/home/dasin/sources/ccls/Release/ccls")

(add-hook 'c-mode-common-hook
          (lambda()
                (local-set-key  (kbd "C-c C-o") 'ff-find-other-file)))

(add-hook 'c-mode-hook (lambda () (require 'ccls) (lsp)))
(add-hook 'c++-mode-hook (lambda () (require 'ccls) (lsp)))

(require-package 'cmake-mode)

(provide 'init-cpp)
;;; init-cpp.el ends here
