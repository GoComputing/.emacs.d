;; Initial tools

; Credit: https://stackoverflow.com/a/13473856
(defun joindirs (root &rest dirs)
  "Joins a series of directories together, like Python's os.path.join,
  (dotemacs-joindirs \"/tmp\" \"a\" \"b\" \"c\") => /tmp/a/b/c"

  (if (not dirs)
      root
    (apply 'joindirs
           (expand-file-name (car dirs) root)
           (cdr dirs))))




;; Configuration metadata
(setq my-global-config-dir (joindirs "~" ".config" "emacs"))


;; Packages directories
(setq my-general-packages-dir my-global-config-dir)

;; Load tools
(setq my-tools-dir (joindirs my-global-config-dir "tools"))


;; Load packages configuration
(setq my-config-dir (joindirs my-global-config-dir "config"))
(load (joindirs my-config-dir "general" "packages.el"))




;; Auto-generated configuration

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ein:jupyter-server-use-subcommand "server")
 '(ein:output-area-inlined-images t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;; Load Emacs configuration

(load (joindirs my-config-dir "general" "backup.el"))
(load (joindirs my-config-dir "general" "layout.el"))
(load (joindirs my-config-dir "general" "keybindings.el"))

(load (joindirs my-config-dir "programming" "general.el"))
(load (joindirs my-config-dir "programming" "notebooks.el"))
