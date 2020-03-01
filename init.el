(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; ---- Org mode ----------------
(require 'org)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(setq org-default-notes-file (concat org-directory "~/org-files/notes.org"))
(global-set-key (kbd "\C-c c") 'org-capture)
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org-files/notes.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
	("n" "Note" entry (file+headline "~/org-files/notes.org" "Notes")
	 "* %? :NOTE:\n%U")))
(setq org-todo-keywords
      '((sequence "TODO" "BLOCKED" "|" "DONE" "CANCELED" "SOMEDAY")
	(sequence "BACKLOG" "IMPLEMENTATION-PLAN" "PROGRESS" "REVIEW" "|" "CLOSED")))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elpy-modules
   (quote
	(elpy-module-company elpy-module-eldoc elpy-module-flymake elpy-module-pyvenv elpy-module-yasnippet elpy-module-django elpy-module-sane-defaults)))
 '(org-agenda-files (quote ("~/org-files/agenda.org")))
 '(package-selected-packages
   (quote
	(groovy-mode yasnippet elpy default-text-scale polymode csv yaml-mode ivy-bibtex docker google-this ensime scala-mode ein jinja2-mode counsel-projectile haskell-mode markdown-mode py-autopep8 auctex ivy swiper magit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ---- General settings --------

;;(add-to-list 'default-frame-alist '(font . "Monaco-10"))
;;(add-to-list 'default-frame-alist '(font . "Courier-14"))
(add-to-list 'default-frame-alist '(font . "Inconsolata-14"))
(setq line-number-mode t)
(setq column-number-mode t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq show-paren-delay 0)
(show-paren-mode 1)
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
(setq tab-width 4)

;; ---- Elpy --------------------
(package-initialize)
(elpy-enable)
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")

;; ---- ivy ---------------------
(ivy-mode 1)

;; ---- Projectile --------------
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; ---- Magit -------------------
(global-set-key (kbd "C-x g") 'magit-status)

;; ---- Python mode -------------


;; ---- ibuffer -----------------
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

;; ---- google-this -------------
(google-this-mode 1)

;; ---- ivy-bibtex --------------
(require 'ivy-bibtex)
(setq ivy-use-virtual-buffers t
      ivy-count-format "%d/%d ")
(setq bibtex-completion-bibliography
      '("~/Dropbox/bibliography/bibliography.bib"))
(setq bibtex-completion-library-path
      '("~/Dropbox/bibliography/files"))

;; ---- tramp -------------------
(setq tramp-default-method "ssh")

;; ---- windmove ----------------
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
