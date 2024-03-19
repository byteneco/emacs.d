(use-package projectile
  :ensure t
  :bind (("C-x p" . projectile-command-map))
  :config
  (setq projectile-auto-discover nil)
  (setq projectile-track-known-projects-automatically nil))

(use-package counsel-projectile
  :ensure t)

(dolist (sym '(project-search
               project-other-window-command
               project-vc-dir
               project-display-buffer
               project-dired
               project-execute-extended-command
               project-switch-to-buffer
               project-query-replace-regexp
               project-find-file
               project-kill-buffers
               project-forget-project
               project-eshell
               project-or-external-find-regexp
               project-other-frame-command
               project-other-tab-command
               project-shell
               project-find-dir
               project-async-shell-command
               project-compile
               project-switch-project
               project-shell-command
               project-forget-zombie-projects
               project-remember-projects-under
               project-forget-projects-under
               project-display-buffer-other-frame
               project-or-external-find-file
               project-find-regexp
	       project-list-buffers))
  (put sym 'no-counsel-M-x #'ignore))

(provide 'init-projectile)
