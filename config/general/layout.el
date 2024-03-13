

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




;; Theme configuration

(use-package doom-themes
  :straight t
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-one t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))
