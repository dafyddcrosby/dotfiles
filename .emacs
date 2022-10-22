;; always start up a server
(require 'server)
(unless (server-running-p)
  (server-start))

(load-file "~/.emacs.d/init/ui.el")
(load-file "~/.emacs.d/init/ruby.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages '(evil markdown-mode slime))
 '(send-mail-function nil)
 '(use-short-answers t)
 '(abbrev-suggest t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-set-key (kbd "M-o") 'other-window)

;; Spell checking
(add-hook 'rst-mode-hook (lambda () (flyspell-mode 1)))

;; Abbrev
(setq abbrev-file-name "~/.emacs.d/abbrev_defs")
(setq save-address t)

(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; use evil for vim hawtness
(require 'evil)
(evil-mode 1)
(evil-set-initial-state 'help-mode 'emacs)
;; Evil numbers
(define-key evil-normal-state-map (kbd "C-c +") 'evil-numbers/inc-at-pt)
(define-key evil-normal-state-map (kbd "C-c -") 'evil-numbers/dec-at-pt)

;; Calendar
(require 'calendar)
(calendar-set-date-style 'iso)
(setq calendar-latitude 51.0453)
(setq calendar-longitude -114.058)
(setq calendar-location-name "Calgary, AB")

;; Show contents of compressed files (eg tarballs)
(auto-compression-mode 1)

;; Make code prettier
(electric-pair-mode 1)
(electric-indent-mode 1)
(show-paren-mode 1)

(when (file-exists-p "~/.emacs.d/work/work.el")
  (add-to-list 'load-path "~/.emacs.d/work")
  (require 'work))

;; Configure SLIME
;; https://github.com/slime/slime
(setq inferior-lisp-program "sbcl")
(eval-after-load "slime"
  '(progn
     (setq common-lisp-hyperspec-root
           "/usr/local/share/doc/hyperspec/HyperSpec/")
     (setq common-lisp-hyperspec-symbol-table
           (concat common-lisp-hyperspec-root "Data/Map_Sym.txt"))
     (setq common-lisp-hyperspec-issuex-table
           (concat common-lisp-hyperspec-root "Data/Map_IssX.txt"))))
