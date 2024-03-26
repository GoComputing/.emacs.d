
; Better search
(use-package consult
  :straight t)

(use-package vertico
  :straight t)

(vertico-mode)

(setq completion-styles '(substring basic))
