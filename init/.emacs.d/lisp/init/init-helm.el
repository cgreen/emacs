(require 'helm-config)

(global-set-key (kbd "M-x") 'helm-M-x)

;; Workaround a bug that causes Helm buffers to open slowly in emacs 26
;; https://github.com/emacs-helm/helm/issues/1976
;;(when (= emacs-major-version 26)
;;  (setq x-wait-for-event-timeout nil))

