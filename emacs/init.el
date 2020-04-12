;; init.el --- Emacs configuration

;; INSTALL PACKAGES
;; --------------------------------------

(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

(add-to-list 'load-path "~/.emacs.d/packages_manual")
(require 'vline)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    elpy
    material-theme))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;; BASIC CUSTOMIZATION
;; --------------------------------------

(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load material theme
(global-linum-mode t) ;; enable line numbers globally

;; PYTHON CONFIGURATION
;; --------------------------------------
(elpy-enable)


;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default)))
 '(exec-path
   (quote
    ("/usr/bin" "/usr/local/bin" "/bin" "/usr/sbin" "/sbin" "/Applications/Emacs.app/Contents/MacOS/bin-x86_64-10_10" "/Applications/Emacs.app/Contents/MacOS/libexec-x86_64-10_10" "/Applications/Emacs.app/Contents/MacOS/libexec" "/Applications/Emacs.app/Contents/MacOS/bin")))
 '(package-selected-packages
   (quote
    (go-autocomplete csv-mode markdown-mode go-mode free-keys ess solarized-theme orgbox org-mobile-sync evil-visual-mark-mode material-theme better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:inherit outline-1 :background "#263238" :foreground "#b58900" :box nil :underline t :weight normal :height 1.0))))
 '(org-level-2 ((t (:inherit outline-2 :background "#263238" :foreground "#cb4b16" :box nil :weight normal :height 1.0))))
 '(org-level-3 ((t (:inherit outline-3 :foreground "#dc322f" :height 1.0))))
 '(org-level-4 ((t (:inherit outline-4 :foreground "#d33682" :height 1.0)))))

;;(set-face-attribute 'default nil :font "Hack-10")
(set-face-attribute 'default nil :height 100)

;; active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)))

;; darpanbiswas custom settings
(ido-mode t)
(display-time-mode t)
(column-number-mode t)
(setq org-image-actual-width nil)
(global-hl-line-mode +1)
(setq visual-line-mode t)

;;darpanbiswas keyboard bings
(global-set-key (kbd "M-[ o") 'org-mode)
(global-set-key (kbd "M-[ v") 'visual-line-mode)
(global-set-key (kbd "M-[ i") 'indent-relative)
(put 'downcase-region 'disabled nil)

;;darpanbiswas backup settings
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves/"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
(put 'upcase-region 'disabled nil)

;; darpanbiswas recentf settings
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
(put 'narrow-to-region 'disabled nil)

;; darpanbiswas space and not tabs
(setq indent-tabs-mode nil)
