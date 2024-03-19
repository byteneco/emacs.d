;; Adjust garbage collection threshold for early startup (see use of gcmh below)
(setq gc-cons-threshold (* 128 1024 1024))

;; Process performance tuning
(setq read-process-output-max (* 4 1024 1024))
(setq process-adaptive-read-buffering nil)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(setq custom-file (locate-user-emacs-file "custom.el"))
(require 'init-package)

;; init emacs setting and graphic resource
(require 'init-emacs)
(require 'init-ui)
(require 'init-keys)

;; enhance emacs
(require 'init-ivy)
(require 'init-avy)
(require 'init-ace-window)
(require 'init-dashboard)
(require 'init-vterm)
(require 'init-ag)

;; programming
(require 'init-projectile)
(require 'init-treesit)
(require 'init-code)
(require 'init-rust)
(require 'init-go)
(require 'init-typescript)
