;; disable the menu bar
(menu-bar-mode 0)
(tool-bar-mode 0)

(setq font-lock-maximum-decoration t)

(setq use-short-answers t)

(setq visible-bell t)

(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "C-x f") 'find-file)

(add-hook 'text-mode-hook 'turn-on-auto-fill)
(auto-fill-mode 1)
(setq-default fill-column 120)
