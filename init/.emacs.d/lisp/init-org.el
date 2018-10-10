;; Org mode
(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
;; Org mode customization
(setq-default org-log-done 'time)
(setq-default org-default-notes-file (expand-file-name "~/org/notes.org"))
(define-key global-map "\C-cc" 'org-capture)
