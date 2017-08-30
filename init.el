
;; GLOBAL Boilerplate

(setq inhibit-startup-message t)
(tool-bar-mode -1)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config
  (which-key-mode)
  )

;; GLOBAL  Use ibuffer instead of regular bufferlist
(defalias 'list-buffers 'ibuffer)


;; GLOBAL Better window management
(use-package ace-window
  :ensure t
  :init
  (progn
   (global-set-key [remap other-window] 'ace-window)
   (custom-set-faces
    '(aw-leading-char-face
      ((t (:inherit ace-jump-face-foreground :height 3.0)))))
   ))


;; GLOBAL Better searching and file finding
(use-package counsel
  :ensure t
  )
(use-package swiper
  :ensure t
  :bind
  (progn
    ("C-x C-f" . counsel-find-file)
    ("C-s" . swiper)
    )
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq enable-recursive-minibuffers t)
    ;(global-set-key "\C-s" 'swiper)
    ;(global-set-key (kbd "C-c C-r") 'ivy-resume)
    ;(global-set-key (kbd "<f6>") 'ivy-resume)
    ;(global-set-key (kbd "M-x") 'counsel-M-x)
    ;(global-set-key (kbd "C-x C-f") 'counsel-find-file)
    ;(global-set-key (kbd "<f1> f") 'counsel-describe-function)
    ;(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
    ;(global-set-key (kbd "<f1> l") 'counsel-find-library)
    ;(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
    ;(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
    ;(global-set-key (kbd "C-c g") 'counsel-git)
    ;(global-set-key (kbd "C-c j") 'counsel-git-grep)
    ;(global-set-key (kbd "C-c k") 'counsel-ag)
    ;(global-set-key (kbd "C-x l") 'counsel-locate)
    ;(define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
    ))

;; GLOBAL Auto-completion
(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
    ))

;; Prettyfying things
;(use-package zenburn-theme
;  :ensure t
;  :config
;  (load-theme 'zenburn t)
;  )

(use-package color-theme
  :ensure t
  :config
  (load-theme 'tango)
  )

;; Org-mode
(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook
	    (lambda () (org-bullets-mode 1))))

