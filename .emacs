;; disable the menu bar
(menu-bar-mode 0)

(setq font-lock-maximum-decoration t)
(add-to-list 'auto-mode-alist
    '("\\.\\(?:gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))
(add-to-list 'auto-mode-alist
    '("\\(Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(send-mail-function nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized/")
(load-theme 'solarized-light t)

;; Spell checking
(add-hook 'rst-mode-hook (lambda () (flyspell-mode 1)))

;; GnuGO
(add-hook 'gnugo-board-mode-hook (lambda () (evil-mode -1)))

;; Abbrev
(setq abbrev-file-name "~/.emacs.d/abbrev_defs")
(setq save-address t)

(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; use evil for vim hawtness
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode t)

;; Calendar
(require 'calendar)
(calendar-set-date-style 'iso)
(setq calendar-latitude 51.0453)
(setq calendar-longitude -114.058)
(setq calendar-location-name "Calgary, AB")

;; Evil numbers
(define-key evil-normal-state-map (kbd "C-c +") 'evil-numbers/inc-at-pt)
(define-key evil-normal-state-map (kbd "C-c -") 'evil-numbers/dec-at-pt)

(require 'twittering-mode)
(setq twittering-use-master-password t)

;; Show contents of compressed files (eg tarballs)
(auto-compression-mode 1)

;; Make code prettier
(electric-pair-mode 1)
(electric-indent-mode 1)
(show-paren-mode 1)
