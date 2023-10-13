
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


;; Load configuration
(setq my-config-dir (joindirs my-global-config-dir "config"))
(load (joindirs my-config-dir "general" "backup.el"))
(load (joindirs my-config-dir "general" "packages.el"))
