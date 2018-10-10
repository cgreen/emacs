;; Make sure we can load our init files and any manually installed packages
(add-to-list 'load-path "~/.emacs.d/lisp/")
(let ((default-directory "~/.emacs.d/lisp/"))
      (normal-top-level-add-subdirs-to-load-path))

;; Enable JS2 major mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Preferences
(setq-default visible-bell t)

(setq-default column-number-mode t)

(show-paren-mode t)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; Packages we want installed by default
;; TODO: Write code to install these if not already
(defvar my-favorite-packages
  '(auctex base16-themes js2-mode org tide))

(load "init-melpa")
(load "init-org")

(setq home-computers '("CRAIG-RAMPAGE"))
(setq work-computers '("CRAIGREE-W530" "CRAIGREE-Z440" "CRAIGREE-Z800"))

(when (member (system-name) home-computers) (load "init-home"))
(when (member (system-name) work-computers) (load "init-work"))

;; Start the server so that emacs clients can connect to it
(server-start)
