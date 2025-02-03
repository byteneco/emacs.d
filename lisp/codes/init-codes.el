(use-package treesit
  :straight nil
  :when (and (fboundp 'treesit-available-p)
         (treesit-available-p))
  :config
  (setq treesit-font-lock-level 4))

(use-package yasnippet
  :config
  (yas-global-mode 1))

(use-package lsp-bridge
  :straight '(lsp-bridge :type git :host github :repo "manateelazycat/lsp-bridge"
            :files (:defaults "*.el" "*.py" "acm" "core" "langserver" "multiserver" "resources")
            :build (:not compile))
  :config
  (setq lsp-bridge-enable-log nil)
  :init
  (global-lsp-bridge-mode))

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
  (diff-hl-insert ((t (:foreground "#b8bb26" :background "#b8bb26"))))
  (diff-hl-delete ((t (:foreground "#fb4934" :background "#e74c3c"))))
  (diff-hl-change ((t (:foreground "#3a81c3" :background "#3a81c3"))))
  :hook
  (magit-pre-refresh . diff-hl-magit-pre-refresh)
  (magit-post-refresh . diff-hl-magit-post-refresh))

(require 'codes-go)
(require 'codes-json)
(require 'codes-ruby)
(require 'codes-rust)
(require 'codes-typescript)

(provide 'init-codes)
