(defun describe-function-at-point ()
  "Display the full documentation of FUNCTION (a symbol)."
  (interactive)
   (let ((function (function-called-at-point)))
     (if (null function)
	 (message "You didn't specify a function")
       (help-setup-xref (list #'describe-function function)
			(called-interactively-p 'interactive))
       (save-excursion
	 (with-help-window (help-buffer)
	   (prin1 function)
	   ;; Use " is " instead of a colon so that
	   ;; it is easier to get out the function name using forward-sexp.
	   (princ " is ")
	   (describe-function-1 function)
	   (with-current-buffer standard-output
	     ;; Return the text we displayed.
	     (buffer-string)))))))


(provide 'init-elsp)
