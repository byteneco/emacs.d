(use-package go-mod-ts-mode
  :hook
  (go-mod-ts-mode . (lambda () (setq tab-width 4)))
  :mode "go\\.mod\\'"
  :init
  (add-to-list 'treesit-language-source-alist '(gomod "https://github.com/camdencheek/tree-sitter-go-mod"))
  )

(use-package go-ts-mode
  :hook
  (go-ts-mode . lsp-deferred)
  (go-ts-mode . (lambda () (setq tab-width 4)))
  :mode "\\.go\\'"
  :init
  (add-to-list 'treesit-language-source-alist '(go "https://github.com/tree-sitter/tree-sitter-go" "v0.20.0"))
  :config
  (setq go-ts-mode-indent-offset 4)
  )

(provide 'init-go)
