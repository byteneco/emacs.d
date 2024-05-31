(use-package exec-path-from-shell
  :ensure t
  :if (memq window-system '(mac ns x))
  :config
  (setq exec-path-from-shell-variables '("PATH" "GOPATH"))
  (exec-path-from-shell-initialize))

(setq make-backup-files nil)
(global-display-line-numbers-mode 1)
(when (display-graphic-p) (toggle-scroll-bar -1))
(auto-save-visited-mode)
(electric-pair-mode)
(set-face-attribute 'default nil :height 140)

(use-package avy
  :ensure t
  :bind (("C-'" . avy-goto-char-timer))
  :config
  (setq avy-background t
        avy-all-windows t
        avy-timeout-seconds 0.3))

(use-package ace-window
  :ensure t
  :bind (("C-x o" . 'ace-window)))

(provide 'init-emacs)
