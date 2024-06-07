(defun my/create-file-with-parent (file-path)
  "Create an empty file at FILE-PATH. Ensure parent directories exist."
  (make-directory (file-name-directory file-path) t)
  (unless (file-exists-p file-path)
    (write-region "" nil file-path)))


(provide 'my-funcs)
