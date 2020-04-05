(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(unless package--initialized (package-initialize))
(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/emacs-init.org"))


;;  '(package-selected-packages
;;    (quote
;;     (modus-vivendi-theme modus-operandi-theme sml-mode htmlize csv yaml-mode ivy-bibtex docker google-this ensime scala-mode ein jinja2-mode counsel-projectile elpy haskell-mode markdown-mode py-autopep8 auctex ivy swiper magit))))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )

;; ;; ---- tramp -------------------
;; (setq tramp-default-method "ssh")


