;; Add Octave to path
(setq exec-path (append exec-path '("E:/GNU/Octave-3.6.4/bin")))

;; Use a network printer
;(defconst PRINTER_NAME "lp1"
;  "printer to use within emacs")
;; now build the network printer name
;(defconst MY_PRINTER  (concat "//1p_printserve2a/" PRINTER_NAME)
;  "Point to the printer emacs is to use. Defaults to host/`PRINTER_NAME'")
(defconst PRINTER_NAME "BRW707781B5D55E"
  "Brother DCP-L2540DW")
(defconst MY_PRINTER  (concat "//192.168.1.20/" PRINTER_NAME)
  "Point to the printer emacs is to use. Defaults to host/`PRINTER_NAME'")
(defconst MY_PS_PRINTER MY_PRINTER
  "Point to the ps printer emacs is to use. Defaults to `MY_PRINTER'")
(setq printer-name MY_PRINTER)

(add-to-list 'custom-theme-load-path "~/.emacs.d/theme/emacs-color-theme-solarized")
(load-theme 'solarized-dark t)

;(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/ahungry-theme-1.10.0/")
;(setq ahungry-theme-font-settings nil)
;(load-theme 'ahungry)

;; This will keep customization from polluting our init file
(setq-default custom-file "customize-home.el")
(load custom-file)
