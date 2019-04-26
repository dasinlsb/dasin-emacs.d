(use-package company
  :config
  (global-company-mode 1))

(use-package company-irony-c-headers
  :after irony company)

(use-package company-irony
  :after (irony company company-irony-c-headers)
  :config
  (add-to-list 'company-backends '(company-irony-c-headers company-irony)))

(provide 'init-company)
