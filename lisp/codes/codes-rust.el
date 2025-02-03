(use-package rust-mode
  :bind
  ("C-c C-c" . rust-run)
  :config
  (setq rust-format-on-save t)
  :hook
  (rust-mode . (lambda () (setq indent-tabs-mode nil))))

(use-package cargo
  :hook
  (rust-mode . cargo-minor-mode))

(provide 'codes-rust)
