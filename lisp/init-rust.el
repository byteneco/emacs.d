;;; need intsall binary https://rust-analyzer.github.io/manual.html#installation
(use-package rust-mode
  :ensure t
  :functions dap-register-debug-template
  :bind
  ("C-c C-c" . rust-run)
  :config
  (setq rust-format-on-save t)
  :hook
  (rust-mode . lsp-deferred)
  (rust-mode . (lambda () (setq indent-tabs-mode nil))))
;;  :config
;;  (require 'dap-gdb-lldb)
;;  (dap-register-debug-template "Rust::LLDB Run Configuration"
;;                               (list :type "lldb"
;;				     :request "launch"
;;			             :name "rust-lldb::Run"
;;				     :gdbpath "rust-lldb"
;;				     :target nil
;;				     :cwd nil)))

(use-package cargo
  :ensure t
  :hook
  (rust-mode . cargo-minor-mode))

(provide 'init-rust)
;;; init-rust.el ends here
