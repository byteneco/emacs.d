(use-package go-ts-mode
  :hook
  (go-ts-mode . lsp-deferred)
  (go-ts-mode . (lambda () (setq tab-width 4)))
  :mode (("\\.go\\'" . go-ts-mode)
	 ("go\\.mod\\'" . go-mod-ts-mode))
  :init
  (add-to-list 'treesit-language-source-alist '(go "https://github.com/tree-sitter/tree-sitter-go" "v0.20.0"))
  (add-to-list 'treesit-language-source-alist '(gomod "https://github.com/camdencheek/tree-sitter-go-mod"))
  :config
  (add-to-list 'auto-mode-alist '("\\.go\\'" . go-ts-mode))
  (add-to-list 'auto-mode-alist '("/go\\.mod\\'" . go-mod-ts-mode))
  (setq go-ts-mode-indent-offset 4)
  )

(provide 'init-go)
