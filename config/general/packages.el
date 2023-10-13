
;; Configure straight.el
(setq my-straight-bootstrap-file (joindirs my-general-packages-dir "straight" "repos" "straight.el" "bootstrap.el"))

(defvar bootstrap-version)
(let ((bootstrap-file my-straight-bootstrap-file)
      (bootstrap-version 6)
      (straight-base-dir my-general-packages-dir))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
