;; Adjust garbage collection threshold for early startup (see use of gcmh below)
(setq gc-cons-threshold (* 128 1024 1024))

;; Process performance tuning
(setq read-process-output-max (* 4 1024 1024))
(setq process-adaptive-read-buffering nil)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(setq custom-file (locate-user-emacs-file "custom.el"))
(require 'use-package)
(require 'init-straight)

;; init emacs setting and graphic resource
(require 'init-emacs)
(require 'init-keys)

;; enhance emacs
(require 'init-workspace)
(require 'init-minibuffer)
(require 'init-autocomplete)
(require 'init-project)
(require 'init-dashboard)
(require 'init-meow)
(require 'init-org)
(require 'init-codes)
(require 'init-ui)
