
;; Documentation: http://xahlee.info/emacs/emacs/emacs_set_backup_into_a_directory.html

; <my-global-config-dir>/backups/emacs-files-backups
(setq my-backup-directory (joindirs my-global-config-dir "backups" "emacs_files_backups"))



(setq backup-directory-alist '(("." . my-backup-directory)))
