(use-package mwim
  :ensure t
  :bind
  ("C-a" . mwim-beginning-of-code-or-line)
  ("C-e" . mwim-end-of-code-or-line))

(use-package company
  :ensure t
  :init (global-company-mode)
  :config
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-align-annotations t)
  (setq company-idle-delay 0.0)
  (setq company-selection-wrap-around t)
  (setq company-transformers '(company-sort-by-occurrence)))

(use-package company-box
  :ensure t
  :if window-system
  :hook (company-mode . company-box-mode))

(use-package flycheck
  :ensure t
  :config
  (setq truncate-lines nil)
  :hook
  (prog-mode . flycheck-mode))

(use-package lsp-mode
  :ensure t
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l"
	lsp-file-watch-threshold 500)
  :hook 
  (lsp-mode . lsp-enable-which-key-integration)
  :commands (lsp lsp-deferred)
  :config
  (setq lsp-completion-provider :none)
  (setq lsp-headerline-breadcrumb-enable t)
  :bind
  ("C-c l s" . lsp-ivy-workspace-symbol))

(use-package lsp-ui
  :ensure t
  :config
  (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
  (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
  (setq lsp-ui-doc-position 'top))

(use-package lsp-ivy
  :ensure t
  :after (lsp-mode))

(use-package magit
  :bind (("C-x g" . magit)))

;; Highlight uncommitted changes using VC
(use-package diff-hl
  :ensure t
  :init
  (global-diff-hl-mode)
  (global-diff-hl-show-hunk-mouse-mode)
  :custom-face
  (diff-hl-insert ((t (:foreground unspecified :background "#8adf80"))))
  (diff-hl-delete ((t (:foreground unspecified :background "#ff8f88"))))
  (diff-hl-change ((t (:foreground unspecified :background "#bfc9ff"))))
  :hook
  (dired-mode . diff-hl-dired-mode))
(provide 'init-code)
