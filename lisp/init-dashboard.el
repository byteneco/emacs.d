(use-package dashboard
  :config
  (dashboard-setup-startup-hook)
  :init
  (setq dashboard-banner-logo-title "WoW")
  (setq dashboard-projects-backend 'project-el)
  (setq dashboard-startup-banner 'official)
  (setq dashboard-items '((recents  . 8)
			  (projects . 4)
			  (bookmarks . 3)))
  (setq dashboard-display-icons-p t)
  (setq dashboard-icon-type 'nerd-icons)
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-footer nil)
  (setq dashboard-set-file-icons t))

(provide 'init-dashboard)
