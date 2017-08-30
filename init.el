
;; Boilerplate

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


;; Ido-mode --- Better pattern matching/ completions
;; Especially for listing open buffers
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

; Also, use ibuffer instead of regular bufferlist
(defalias 'list-buffers 'ibuffer)
;; (defalias 'list-buffers 'ibuffer-other-window)


;; Org-mode
(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook
	    (lambda () (org-bullets-mode 1))))

