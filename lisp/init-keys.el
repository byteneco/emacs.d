(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package general
  :ensure t)

(global-set-key (kbd "C-x C-0") 'delete-window)

(provide 'init-keys)
