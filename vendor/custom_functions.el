;;; custom_functions --- Various utility functions
;;; Commentary:

;;; Code:
(defun xah-escape-quotes (*begin *end)
  "Replace 「\"」by \\\" in current line or text selection from *BEGIN to *END.
See also: `xah-unescape-quotes'
URL `http://ergoemacs.org/emacs/elisp_escape_quotes.html'
Version 2016-07-17"
  (interactive
   (if (use-region-p)
       (list (region-beginning) (region-end))
     (list (line-beginning-position) (line-end-position))))
  (save-excursion
    (save-restriction
      (narrow-to-region *begin *end)
      (goto-char (point-min))
      (while (search-forward "\"" nil t)
        (replace-match "\\\"" 'FIXEDCASE 'LITERAL)))))
(provide 'custom_functions)
;;; custom_functions.el ends here
