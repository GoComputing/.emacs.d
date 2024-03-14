
; Disable adding a tab when creating a new line in text mode
; https://emacs.stackexchange.com/questions/76938/how-do-i-turn-off-electric-indent-mode-within-fundamental-mode
(with-eval-after-load 'electric
  (electric-indent-mode -1))

(defcustom my-electric-indent-exclusion-list '(text-mode fundamental-mode)
  "Major modes where `electric-indent-local-mode' is not switched on."
  :group 'my
  :type '(repeat symbol))

(defun my-switch-on-electric-indent ()
  "Maybe switch on `electric-indent-local-mode'.
Do not activate electric indent if the major mode is
in `my-electric-indent-exclusion-list'."
  (unless (apply #'derived-mode-p my-electric-indent-exclusion-list)
    (electric-indent-local-mode)))

(add-hook 'after-change-major-mode-hook #'my-switch-on-electric-indent)
