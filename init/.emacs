;; Preferences
(setq-default visible-bell t)

(setq-default column-number-mode t)

(show-paren-mode t)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; Make sure we can load our init files and any manually installed packages
(add-to-list 'load-path "~/.emacs.d/lisp/")
(let ((default-directory "~/.emacs.d/lisp/"))
      (normal-top-level-add-subdirs-to-load-path))

;; Packages we want installed by default
;; TODO: Write code to install these if not already
(defvar my-favorite-packages
  '(auctex base16-themes helm js2-mode magit org tide))

(defun get-fullpath (@file-relative-path)
  "Return the full path of *file-relative-path, relative to caller's file location."
  (expand-file-name (file-name-directory (or load-file-name buffer-file-name)) @file-relative-path))

;; This needs to be loaded before the packages are initialized, because we're hacking the load-path
;; to work around a bug in the auctex package.
(load "init-auctex")

;; Add MELPA repository and initialize packages
(load "init-melpa")

;; Initialize installed packages
(load "init-helm")
(load "init-magit")
(load "init-org")
(load "init-tide")

;; Enable JS2 major mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(setq home-computers '("CRAIG-RAMPAGE" "Mynoghra"))
(setq work-computers '("CRAIGREE-W530" "CRAIGREE-Z440" "CRAIGREE-Z800"))

(when (member (system-name) home-computers) (load "init-home"))
(when (member (system-name) work-computers) (load "init-work"))

;; Start the server so that emacs clients can connect to it
(server-start)
