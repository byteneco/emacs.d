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

(provide 'init-emacs)
