(require 'org)

(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "STARTED(s)" "|" "DONE(d!/!)")
	      (sequence "WAITING(w@/!)" "SOMEDAY(S)" "PROJECT(P@)" "|" "CANCELLED(c@/!)"))))

(setq org-tag-alist '(("@work" . ?w) ("@home" . ?h) ("laptop" . ?l)))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/gtd.org" "Tasks")
	 "* TODO %?\nCreate In %U\n")
	("j" "Journal" entry (file+datetree "~/org/journal.org")
	 "* %?\nEntered on %U\n %i")
	("n" "Note" entry (file+headline "~/org/note.org" "Note")
	 "* NOTE %?\n %i \nCreate %U")))

(setq org-directory "~/org/")
(setq org-default-notes-file (concat org-directory "~/org/note.org"))

(defun gtd ()
  (interactive)
  (find-file "~/org/gtd.org"))

(setq org-agenda-exporter-settings
      '((ps-number-of-columns 1)
	(ps-landscape-mode t)
	(htmlize-output-type 'css)))

(setq org-agenda-custom-commands
'(
  ("p" "Projects"
   ((tags "PROJECT")))
  ("h" "Office and Home Lists"
   ((agenda)
    (tags-todo "OFFICE")
    (tags-todo "HOME")
    (tags-todo "WEB")
    (tags-todo "CALL")
    ))

  ("d" "Daily Action List"
   (
    (agenda "" ((org-agenda-ndays 1)
	(org-agenda-sorting-strategy
	 (quote ((agenda time-up priority-down tag-up) )))
	(org-deadline-warning-days 0)
	))))))


(setq org-agenda-files '("~/org/gtd.org"
			 "~/org/note.org"
			 "~/org/journal.org"))

(provide 'init-org)
