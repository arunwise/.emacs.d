(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(unless package--initialized (package-initialize))
(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/emacs-init.org"))

; @begin(68483553)@ - Do not edit these lines - added automatically!
(if (file-exists-p "/Users/arun.nampally/.ciaoroot/master/ciao_emacs/elisp/ciao-site-file.el")
  (load-file "/Users/arun.nampally/.ciaoroot/master/ciao_emacs/elisp/ciao-site-file.el"))
; @end(68483553)@ - End of automatically added lines.
