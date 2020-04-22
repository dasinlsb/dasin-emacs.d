;;; init-org.el --- Org-mode config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(define-key global-map (kbd "C-c a") 'org-agenda)

(defvar sanityinc/org-global-prefix-map (make-sparse-keymap)
  "A keymap for handy global access to org helpers, particularly clocking.")

(define-key sanityinc/org-global-prefix-map (kbd "j") 'org-clock-jump-to-current-clock)
(define-key sanityinc/org-global-prefix-map (kbd "l") 'org-clock-in-last)
(define-key sanityinc/org-global-prefix-map (kbd "i") 'org-clock-in)
(define-key sanityinc/org-global-prefix-map (kbd "o") 'org-clock-out)
(define-key global-map (kbd "C-c o") sanityinc/org-global-prefix-map)

;;; Capturing
(global-set-key (kbd "C-c c") 'org-capture)

;;; To-do settings
(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d!/!)")
              (sequence "PROJECT(p)" "|" "DONE(d!/!)" "CANCELLED(c@/!)")
              (sequence "WAITING(w@/!)" "DELEGATED(e!)" "HOLD(h)" "|" "CANCELLED(c@/!)")))
      org-todo-repeat-to-state "NEXT")

(setq org-todo-keyword-faces
      (quote (("NEXT" :inherit warning)
              ("PROJECT" :inherit font-lock-string-face))))


(setq org-capture-templates
      `(("t" "todo" entry (file "")  ; "" => `org-default-notes-file'
         "* NEXT %?\n%U\n" :clock-resume t)
        ("n" "note" entry (file "")
         "* %? :NOTE:\n%U\n%a\n" :clock-resume t)
        ))

(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

(setq org-src-fontify-natively t)

;; orgmode import image from clipboard
(require-package 'f)

(defun org-docs-insert-image-from-clipboard ()
    "Take a screenshot into a time stamped unique-named file in the
    same directory as the org-buffer and insert a link to this file."
    (interactive)
    (let* ((the-dir (concat (projectile-project-root) ""))
           (attachments-dir (concat the-dir "assets/"))
           (jpg-file-name (format-time-string "%Y%m%d_%H%M%S.jpg"))
           (jpg-path (concat attachments-dir jpg-file-name))
           (jpg-relative-path (f-relative jpg-path  (f-dirname buffer-file-name))))
          (shell-command (concat "powershell -command \"Add-Type -AssemblyName System.Windows.Forms;if ($([System.Windows.Forms.Clipboard]::ContainsImage())) {$image = [System.Windows.Forms.Clipboard]::GetImage();[System.Drawing.Bitmap]$image.Save('" jpg-path "',[System.Drawing.Imaging.ImageFormat]::Jpeg); Write-Output 'clipboard content saved as file'} else {Write-Output 'clipboard does not contain image data'}\""))
          (insert (concat "[[file:" jpg-relative-path "]]"))
          ))
;; set keybinding
(global-set-key (kbd "C-c C-i") 'org-docs-insert-image-from-clipboard)

(provide 'init-org)
;;; init-org.el ends here
