(require 'package)
(setq package-enable-at-startup nil)
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(unless package--initialized (package-initialize))
(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/emacs-init.org"))
