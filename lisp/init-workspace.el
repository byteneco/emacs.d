(use-package perspective
  :ensure t
  :bind
  ("C-x C-b" . persp-list-buffers)         ; or use a nicer switcher, see below
  :custom
  (persp-mode-prefix-key (kbd "C-c C-w"))  ; pick your own prefix key here
  (persp-state-default-file (expand-file-name ".workspace" user-emacs-directory))
  :init
  (persp-mode))

(provide 'init-workspace)
