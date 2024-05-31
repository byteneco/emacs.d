(use-package typescript-ts-mode
  :init
  (add-to-list 'treesit-language-source-alist '(typescript "https://github.com/tree-sitter/tree-sitter-typescript" nil "typescript/src"))
  (add-to-list 'treesit-language-source-alist '(typescript "https://github.com/tree-sitter/tree-sitter-typescript" nil "tsx/src"))
  :hook
  (typescript-ts-mode . lsp-deferred)
  (tsx-ts-mode . lsp-deferred)
  :mode (("\\.ts\\'" . typescript-ts-mode)
         ("\\.tsx\\'" . tsx-ts-mode)))
(provide 'init-typescript)
