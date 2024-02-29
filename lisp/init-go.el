(use-package go-mode
  :ensure t
  :hook
  (go-mode . lsp-deferred)
  (go-mode . (lambda ()
	       (setq indent-tabs-mode nil)
	       (setq tab-width 4)))
  (before-save . gofmt-before-save)
)

(provide 'init-go)
