(use-package heex-ts-mode
  :mode (("\\.heex\\'" . heex-ts-mode))
  :hook
  (heex-ts-mode . lsp-deferred)
  (elixir-ts-mode . (lambda () (setq tab-width 2)))
  :init
  (add-to-list 'treesit-language-source-alist '(heex "https://github.com/phoenixframework/tree-sitter-heex"))
  :config
  (setq heex-ts-mode-indent-offset 2)
  )

(use-package elixir-ts-mode
  :mode (("\\.ex\\'" . elixir-ts-mode)
	 ("\\.exs\\'" . elixir-ts-mode)
	 )
  :hook
  (elixir-ts-mode . lsp-deferred)
  (elixir-ts-mode . (lambda () (setq tab-width 2)))
  :init
  (add-to-list 'treesit-language-source-alist '(elixir "https://github.com/elixir-lang/tree-sitter-elixir"))
  :config
  (setq elixir-ts-mode-indent-offset 2)
  )

(provide 'init-elixir)
