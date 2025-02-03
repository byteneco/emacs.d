(use-package typescript-ts-mode
  :straight nil
  :init
  (add-to-list 'treesit-language-source-alist '(typescript "https://github.com/tree-sitter/tree-sitter-typescript" "v0.20.3" "typescript/src"))
  (add-to-list 'treesit-language-source-alist '(tsx "https://github.com/tree-sitter/tree-sitter-typescript" "v0.20.3" "tsx/src"))
  :hook
  (typescript-ts-mode . (lambda ()
			  (setq tab-width 2)))
  (tsx-ts-mode . (lambda ()
		   (setq tab-width 2)))
  :config
  (setq typescript-ts-mode-indent-offset 2)
  :mode (("\\.ts\\'" . typescript-ts-mode)
         ("\\.tsx\\'" . tsx-ts-mode)))

(provide 'codes-typescript)
