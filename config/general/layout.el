

;; Configure Nano Emacs (https://github.com/rougier/nano-emacs)
;; Nano Emacs is a set of tools to make beautiful the general Emacs editor

(straight-use-package
  '(nano :type git :host github :repo "rougier/nano-emacs"))



(require 'nano-faces)
(require 'nano-theme)
(require 'nano-theme-dark)
(require 'nano-theme-light)

(nano-theme-set-dark)

(defun nano-theme ()
  "Derive many, many faces from the core nano faces."
  (nano-theme--basics)
  ; (nano-theme--font-lock)
  (nano-theme--mode-line)
  (nano-theme--minibuffer)
  (nano-theme--buttons)
  (nano-theme--info)
  (nano-theme--bookmark)
  (nano-theme--speedbar)
  (nano-theme--message)
  (nano-theme--outline)
  (nano-theme--customize)
  (nano-theme--package)
  (nano-theme--flyspell)
  (nano-theme--ido)
  (nano-theme--diff)
  (nano-theme--term)
  (nano-theme--calendar)
  (nano-theme--agenda)
  (nano-theme--org)
  (nano-theme--mu4e)
  (nano-theme--elfeed)
  (nano-theme--deft)
  (nano-theme--rst)
  (nano-theme--markdown)
  (nano-theme--ivy)
  (nano-theme--helm)
  (nano-theme--helm-swoop)
  (nano-theme--helm-occur)
  (nano-theme--helm-ff)
  (nano-theme--helm-grep)
  (nano-theme--hl-line)
  (nano-theme--company))

(call-interactively 'nano-refresh-theme)

; (require 'nano-defaults)
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
  (load-theme 'doom-xcode t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))
