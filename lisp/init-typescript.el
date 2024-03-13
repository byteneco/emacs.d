(use-package typescript-ts-mode
  :hook
  (typescript-ts-mode . lsp-deferred)
  (tsx-ts-mode . lsp-deferred)
  :mode (("\\.ts\\'" . typescript-ts-mode)
         ("\\.tsx\\'" . tsx-ts-mode)))

(provide 'init-typescript)
