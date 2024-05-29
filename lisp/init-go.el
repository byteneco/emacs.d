(use-package go-ts-mode
  :hook
  (go-ts-mode . lsp-deferred)
  ;; (go-ts-mode . (lambda () (setq tab-width 4)))
  :mode (("\\.go\\'" . go-ts-mode)
	 ("go\\.mod\\'" . go-mod-ts-mode))
  :config
  (add-to-list 'auto-mode-alist '("\\.go\\'" . go-ts-mode))
  (add-to-list 'auto-mode-alist '("/go\\.mod\\'" . go-mod-ts-mode))
  (setq go-ts-mode-indent-offset 4)
  )

(provide 'init-go)
