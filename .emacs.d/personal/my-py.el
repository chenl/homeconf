;;; my-py -- personal python defs

;;; Commentary:
;;;    enable elpy by default

;;; Code:
(package-initialize)
(elpy-enable)

(defun elpy-goto-definition-with-return ()
  "Go to the definition of the symbol at point, if found.

Allow the user to jump back."
  (interactive)
  (let (location ))
  (push-mark)
  (elpy-goto-definition))

(add-hook 'elpy-mode
          (lambda ()
            (define-key elpy-mode-map (kbd "M-.") #'elpy-goto-definition-with-return)))

(provide 'mypy)
;;; my-py.el ends here
