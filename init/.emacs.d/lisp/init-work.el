;; powershell-mode
(autoload 'powershell-mode "powershell-mode" "A editing mode for Microsoft PowerShell." t)
(add-to-list 'auto-mode-alist '("\\.ps[dm]?1\\'" . powershell-mode)) ; PowerShell script

;; Add windows console debugger ( CDB ) GUD mode
(load "cdb-gud")
;; (global-set-key [f5]    'gud-cont)
;; (global-set-key [f7]    'gud-tbreak)
;; (global-set-key [f8]    'gud-step)
;; (global-set-key [f9]    'gud-break)
;; (global-set-key [f10]   'gud-next)
;; (global-set-key [f11]   'gud-finish)

(load "./init-octave")

;; add diff to path
;(setq-default diff-path "C:/Program Files (x86)/Git/bin")
(setq-default exec-path (append exec-path '("C:/Program Files (x86)/Git/bin")))

;; Load theme
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/lisp/emacs-color-theme-solarized")
;;(load-theme 'solarized-dark t)

;; Wait until after packages have been loaded to load the theme.
(add-hook 'after-init-hook (lambda () (load-theme 'base16-monokai)))

;; This will keep customization from polluting our init file
(setq-default custom-file "customize-work")
(load custom-file)
