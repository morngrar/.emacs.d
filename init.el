
;; This file contains boiler plate code to enable the org-file to take
;; over.

; Enable package management from MELPA
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

; Setup "use-package"
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

; Load org-mode emacs-config
(org-babel-load-file (expand-file-name "~/.emacs.d/emacs-config.org"))
