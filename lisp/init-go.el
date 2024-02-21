(use-package go-mode
  :ensure t
  :hook
  (go-mod . lsp-deferred)
)

(provide 'init-go)
