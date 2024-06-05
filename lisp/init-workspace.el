(use-package perspective
  :ensure t
  :bind
  ("C-x C-b" . persp-list-buffers)         ; or use a nicer switcher, see below
  :custom
  (persp-mode-prefix-key (kbd "C-c C-w"))  ; pick your own prefix key here
  (persp-state-default-file (expand-file-name ".workspace" user-emacs-directory))
  (persp-sort 'created)
  :init
  (persp-mode)
  :config
  (with-eval-after-load 'consult
    (consult-customize consult--source-buffer :hidden t :default nil)
    (add-to-list 'consult-buffer-sources persp-consult-source)))

(provide 'init-workspace)
