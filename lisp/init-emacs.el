(setq make-backup-files nil)
(global-display-line-numbers-mode 1)
(when (display-graphic-p) (toggle-scroll-bar -1))
(pixel-scroll-precision-mode t)
(auto-save-visited-mode)
(electric-pair-mode)

(provide 'init-emacs)
