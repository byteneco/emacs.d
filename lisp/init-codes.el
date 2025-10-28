(use-package treesit
  :straight nil
  :when (and (fboundp 'treesit-available-p)
             (treesit-available-p))
  :init
  (setq treesit-language-source-alist
				'((bash "https://github.com/tree-sitter/tree-sitter-bash")
					(cmake "https://github.com/uyha/tree-sitter-cmake")
					(css "https://github.com/tree-sitter/tree-sitter-css")
					(elisp "https://github.com/Wilfred/tree-sitter-elisp")
					(go "https://github.com/tree-sitter/tree-sitter-go")
					(html "https://github.com/tree-sitter/tree-sitter-html")
					(javascript "https://github.com/tree-sitter/tree-sitter-javascript" "master" "src")
					(json "https://github.com/tree-sitter/tree-sitter-json")
					(make "https://github.com/alemuller/tree-sitter-make")
					(markdown "https://github.com/ikatyang/tree-sitter-markdown")
					(python "https://github.com/tree-sitter/tree-sitter-python")
					(toml "https://github.com/tree-sitter/tree-sitter-toml")
					(tsx "https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src") ;; v0.20.3
					(typescript "https://github.com/tree-sitter/tree-sitter-typescript" "master" "typescript/src") ;; v0.20.3
					(heex "https://github.com/phoenixframework/tree-sitter-heex")
					(yaml "https://github.com/ikatyang/tree-sitter-yaml")))
  :mode
  (("\\.ts\\'" . typescript-ts-mode)
   ("\\.tsx\\'" . tsx-ts-mode)
   ("\\.js\\'" . js-ts-mode)
	 ("\\.ex\\'" . elixir-ts-mode)
	 ("\\.heex\\'" . heex-ts-mode)
	 ("\\.exs\\'" . elixir-ts-mode)
   ("\\.go\\'" . go-ts-mode))
  :hook
	(heex-ts-mode . (lambda ()
										(setq tab-width 2)))
  (prog-mode . (lambda ()
								 (setq tab-width 2)))
  :config
	(setq go-ts-mode-indent-offset 2)
	(setq typescript-ts-mode-indent-offset 2)
	(setq js-indent-level 2)
  (setq treesit-font-lock-level 4))

(use-package lsp-mode
	:hook
	(go-ts-mode . lsp)
	(heex-ts-mode . lsp)
	(lsp-completion-mode . my/lsp-mode-setup-completion)
	:bind
	(("C-\." . lsp-execute-code-action))
	:custom
	(lsp-lens-enable t)
	(lsp-go-use-placeholders nil)
	:init
  (defun my/orderless-dispatch-flex-first (_pattern index _total)
    (and (eq index 0) 'orderless-flex))

  (defun my/lsp-mode-setup-completion ()
    (setf (alist-get 'styles (alist-get 'lsp-capf completion-category-defaults))
          '(orderless))
    ;; Optionally configure the first word as flex filtered.
		(setq-local orderless-style-dispatchers '(my/orderless-dispatch-flex-first))
		;; Optionally configure the cape-capf-buster.
		(setq-local completion-at-point-functions (list (cape-capf-buster #'lsp-completion-at-point)))
		)
	:config
	(setq lsp-completion-provider :none)
	(setq lsp-headerline-breadcrumb-enable nil))

(use-package thrift)

(use-package lsp-ui)

(use-package flycheck)

(use-package apheleia
	:config
	(apheleia-global-mode +1))

(use-package yasnippet
	:config
	(yas-global-mode 1))

(use-package magit)

(use-package diff-hl
	:init
	(global-diff-hl-mode)
	(global-diff-hl-show-hunk-mouse-mode)

	:custom-face
	(diff-hl-insert ((t (:foreground "#b8bb26" :background "#b8bb26"))))
	(diff-hl-delete ((t (:foreground "#fb4934" :background "#e74c3c"))))
	(diff-hl-change ((t (:foreground "#3a81c3" :background "#3a81c3"))))
	:hook
	(magit-pre-refresh . diff-hl-magit-pre-refresh)
	(magit-post-refresh . diff-hl-magit-post-refresh))

(provide 'init-codes)
