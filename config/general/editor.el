
; Disable adding a tab when creating a new line in text mode
(add-hook 'text-mode-hook
            (lambda () (electric-indent-local-mode -1)))
