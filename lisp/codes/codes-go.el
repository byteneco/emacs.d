(use-package go-mode
  :straight t
  :hook
  (go-mode . (lambda ()
	       (setq indent-tabs-mode nil)
	       (setq tab-width 2)))
  :config
  (setq gofmt-command "goimports")
  )

(provide 'codes-go)
