

;; Configure Nano Emacs (https://github.com/rougier/nano-emacs)
;; Nano Emacs is a set of tools to make beautiful the general Emacs editor

(straight-use-package
  '(nano :type git :host github :repo "rougier/nano-emacs"))



(require 'nano-faces)
(require 'nano-theme)
(require 'nano-theme-dark)
(require 'nano-theme-light)

(nano-theme-set-dark)
(call-interactively 'nano-refresh-theme)

(require 'nano-defaults)
(require 'nano-session)
(require 'nano-modeline)
(require 'nano-bindings)
; (require 'nano-compact)
(require 'nano-splash)
(require 'nano-help)
; (require 'nano-command)




;; Configure menu
(menu-bar-mode -1) 
; (toggle-scroll-bar -1) 
(tool-bar-mode -1) 



;; Other configuration
(setq frame-resize-pixelwise t)
(add-hook 'window-setup-hook 'toggle-frame-maximized t)
