;; always start up a server
(require 'server)
(unless (server-running-p)
  (server-start))

(load-file "~/.emacs.d/init/ui.el")
(load-file "~/.emacs.d/init/ruby.el")
(load-file "~/.emacs.d/init/text.el")
(load-file "~/.emacs.d/init/mail.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(evil markdown-mode slime)))

;; Spell checking
(add-hook 'rst-mode-hook (lambda () (flyspell-mode 1)))

;; Abbrev
(load-file "~/.emacs.d/init/abbrev.el")
;; Calendar
(load-file "~/.emacs.d/init/calendar.el")
;; Org-mode (builtin)
(load-file "~/.emacs.d/init/org.el")

(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; use evil for vim hawtness
(load-file "~/.emacs.d/init/evil.el")
;; SLIME
(load-file "~/.emacs.d/init/slime.el")

(when (file-exists-p "~/.emacs.d/work/work.el")
  (add-to-list 'load-path "~/.emacs.d/work")
  (require 'work))

; Have a place to put config that I'm not ready to commit to yet
(when (file-exists-p "~/.emacs.d/init/wip.el")
  (load-file "~/.emacs.d/init/wip.el"))
