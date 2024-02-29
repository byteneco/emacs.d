(use-package projectile
  :ensure t
  :bind (("C-c p" . projectile-command-map))
  :config
  (setq projectile-auto-discover nil)
  (setq projectile-track-known-projects-automatically nil))

(provide 'init-projectile)
