;; Allow status to be run from any buffer
(global-set-key (kbd "C-x g") 'magit-status)

;; Allow popup of popups to be summoned anywhere
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

;; Enable Magit minor mode for file buffers in a repo
(setq-default global-magit-file-mode t)

;; You shall have no VC other than me
(setq-default vc-handled-backends nil)
