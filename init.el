(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(setq custom-file (locate-user-emacs-file "custom.el"))
(require 'init-package)

;; init emacs setting and graphic resource
(require 'init-emacs)
(require 'init-ui)

;; enhance emacs
(require 'init-ivy)
(require 'init-avy)
(require 'init-ace-window)
(require 'init-dashboard)
(require 'init-vterm)

;; programming
(require 'init-projectile)
(require 'init-treemacs)
(require 'init-code)
(require 'init-rust)
(require 'init-go)
