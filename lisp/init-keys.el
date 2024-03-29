(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package general
  :ensure t)

(general-define-key
 :keymaps 'prog-mode-map
 :prefix "C-j"
 "s" 'lsp-ivy-workspace-symbol        ;; seach symbol
 "d" 'lsp-ui-peek-find-definitions    ;; find definitions
 "i" 'lsp-ui-peek-find-implementation ;; find implementation
 "r" 'lsp-ui-peek-find-references     ;; find references
 "f" 'counsel-projectile-ag           ;; projectile content search
 )

(general-define-key
 :keymaps 'prog-mode-map
 :prefix "C-o"
 "d" 'lsp-ui-doc-glance ;; show doc
 "m" 'lsp-ui-imenu      ;; show imenu
 )

(global-set-key [C-return] "\C-e\C-e\C-m")

(provide 'init-keys)
