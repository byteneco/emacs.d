(add-to-list 'load-path (expand-file-name "pkg" user-emacs-directory))

(setq custom-file (locate-user-emacs-file "custom.el"))
(require 'init-emacs)
(require 'init-elpa)
(require 'init-use-package)
(require 'init-ivy)
(require 'init-vterm)
(require 'init-avy)
