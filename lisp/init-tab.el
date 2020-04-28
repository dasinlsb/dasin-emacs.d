;;; init-tab.el --- Load tab utility
;;; Commentary:
;;; Code:

(add-to-list 'load-path (expand-file-name "elisp/awesome-tab" user-emacs-directory))

(condition-case nil
    (progn
      (require 'awesome-tab)
      (awesome-tab-mode t))
  (error
   (message "Couldn't find local package elisp/awesome-tab, maybe you forgot updating git submodule?")))

(provide 'init-tab)
;;; init-tab.el ends here
