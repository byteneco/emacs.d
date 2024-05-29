(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package general
  :ensure t))

(global-set-key [C-return] "\C-e\C-e\C-m")

(provide 'init-keys)
