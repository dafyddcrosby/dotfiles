; Fix TAB in emacs
(setq evil-want-C-i-jump nil)
(setq evil-undo-system 'undo-redo) ; Emacs 28+

(require 'evil)
(evil-mode 1)

(evil-define-key 'normal org-mode-map (kbd "<tab>") #'org-cycle)
(evil-define-key 'normal org-mode-map (kbd "RET") #'org-open-at-point)

(evil-define-key 'motion Info-mode-map (kbd "RET") #'Info-follow-nearest-node)
(evil-define-key 'motion Info-mode-map (kbd "[") #'Info-backward-node)
(evil-define-key 'motion Info-mode-map (kbd "]") #'Info-forward-node)

(evil-define-key nil 'global (kbd "C-S-v") #'yank)

;; (require 'org-evil)

;; Evil numbers
;(define-key evil-normal-state-map (kbd "C-c +") 'evil-numbers/inc-at-pt)
;(define-key evil-normal-state-map (kbd "C-c -") 'evil-numbers/dec-at-pt)
