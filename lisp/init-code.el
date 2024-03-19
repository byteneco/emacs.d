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
  (setq lsp-keymap-prefix "C-c l")
  (setq lsp-enable-file-watchers nil)
  :hook
  (lsp-mode . lsp-enable-which-key-integration)
  :config
  (setq lsp-completion-provider :none)
  (setq lsp-headerline-breadcrumb-enable nil))

(use-package lsp-ui
  :ensure t
  :custom
  (lsp-ui-doc-position 'at-point))

(use-package lsp-ivy
  :ensure t
  :after (lsp-mode))

(use-package magit
  :ensure t
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
