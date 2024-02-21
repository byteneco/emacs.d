(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(setq custom-file (locate-user-emacs-file "custom.el"))
;; init use-package
(require 'init-elpa)
(require 'init-use-package)

;; init emacs setting and graphic resource
(require 'init-emacs)
(require 'init-themes)

(require 'init-ivy)
(require 'init-vterm)
(require 'init-avy)
(require 'init-ace-window)
(require 'init-mwim)
(require 'init-dashboard)

;; programming
(require 'init-projectile)
(require 'init-syntax)
(require 'init-lsp)
(require 'init-rust)
(require 'init-treemacs)
(require 'init-go)
