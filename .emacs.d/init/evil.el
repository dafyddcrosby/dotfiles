(require 'evil)
(evil-mode 1)
(evil-set-initial-state 'help-mode 'emacs)
(setq evil-undo-system 'undo-redo) ; Emacs 28+

;; (require 'org-evil)

;; Evil numbers
;(define-key evil-normal-state-map (kbd "C-c +") 'evil-numbers/inc-at-pt)
;(define-key evil-normal-state-map (kbd "C-c -") 'evil-numbers/dec-at-pt)
