;; add octave to exec-path
(setq-default exec-path (append exec-path '("C:/Octave-3.6.4/bin/")))

;; Octave startup resides in this file
(setq-default inferior-octave-startup-file "~/.emacs-octave")

(autoload 'octave-help "octave-hlp" nil t)

