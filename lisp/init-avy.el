(use-package avy
  :ensure t
  :bind (("C-'" . avy-goto-char-timer))
  :config
  (setq avy-background t
        avy-all-windows t
        avy-timeout-seconds 0.3))

(provide 'init-avy)
