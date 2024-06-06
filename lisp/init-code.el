(use-package treesit
  :straight nil
  :when (and (fboundp 'treesit-available-p)
         (treesit-available-p))
  :config
  (setq treesit-font-lock-level 4))

(use-package yasnippet
  :config
  (yas-global-mode 1))

(use-package company
  :init (global-company-mode)
  :config
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-align-annotations t)
  (setq company-idle-delay 0)
  (setq company-selection-wrap-around t)
  (setq company-transformers '(company-sort-by-occurrence))
  (setq company-backends '((company-yasnippet company-capf))))

(use-package company-box
  :if window-system
  :hook (company-mode . company-box-mode)
  :config
  (setq company-box-backends-colors nil))

(use-package flycheck
  :config
  (setq truncate-lines nil)
  :custom
  (flycheck-indication-mode nil)
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
  :bind (("C-\." . lsp-execute-code-action))
  :config
  (setq lsp-completion-provider :none)
  (setq lsp-headerline-breadcrumb-enable nil))

(use-package magit
  :bind (("C-x g" . magit)
	 :map magit-file-section-map
	 ("RET" . magit-diff-visit-file-other-window)))

;; Highlight uncommitted changes using VC
(use-package diff-hl
  :init
  (global-diff-hl-mode)
  (global-diff-hl-show-hunk-mouse-mode)
  
  :custom-face
  (diff-hl-insert ((t (:foreground "#8ec07c" :background "#8ec07c"))))
  (diff-hl-delete ((t (:foreground "#fb4934" :background "#e74c3c"))))
  (diff-hl-change ((t (:foreground "#3a81c3" :background "#3a81c3"))))
  :hook
  (dired-mode . diff-hl-dired-mode)
  (magit-pre-refresh . diff-hl-magit-pre-refresh)
  (magit-post-refresh . diff-hl-magit-post-refresh))
(provide 'init-code)
