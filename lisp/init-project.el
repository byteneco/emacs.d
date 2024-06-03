(require 'keymap)
(require 'cl-seq)
(require 'project)

(keymap-substitute project-prefix-map #'project-find-regexp #'consult-ripgrep)
(cl-nsubstitute-if
  '(consult-ripgrep "Find regexp")
  (pcase-lambda (`(,cmd _)) (eq cmd #'project-find-regexp))
  project-switch-commands)
(global-set-key (kbd "C-x C-p") 'project-prefix-map)

(provide 'init-project)
