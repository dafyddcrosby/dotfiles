(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

(setq-default org-hierarchical-todo-statistics nil)
(add-hook 'org-after-todo-statistics-hook #'org-summary-todo)

(setq org-refile-use-outline-path 'file)

(setq org-todo-keywords
      '((sequence "TODO(t)" "WIP(w)" "VERIFY(v)" "|" "DONE(d)")
        (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
        (sequence "|" "CANCELED(c)")))

; https://orgmode.org/manual/Link-Abbreviations.html
(setq org-link-abbrev-alist
      '(("duckduckgo" . "https://duckduckgo.com/?q=%s")
        ("wp"         . "https://en.wikipedia.org/wiki/%s")
        ("omap"       . "https://nominatim.openstreetmap.org/ui/search.html?q=%s&polygon=1")))
