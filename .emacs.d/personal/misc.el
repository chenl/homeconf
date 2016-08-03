;;; personal/misc -- misc defs
;;; Commentary:
;;;   Things I don't know where else to put
;;; Code:

;; whitespace-mode
(require 'whitespace)
(add-hook 'whitespace-mode-hook
          (lambda ()
            (setq whitespace-style '(face tabs empty trailing))
            (setq whitespace-active-style '(face tabs empty trailing))))

;; hide-show-mode
(require 'hideshow)
;; (add-hook 'hs-minor-mode
;;           (lambda ()
;;             (define-key hs-minor-mode-map (kbd "C-<tab>") #'hs-toggle-hiding)))
(define-key hs-minor-mode-map (kbd "C-<tab>") #'hs-toggle-hiding)

;; es-mode
;; (add-to-list 'load-path "/path/to/es-mode-dir")
(autoload 'es-mode "es-mode.el"
  "Major mode for editing Elasticsearch queries" t)
(add-to-list 'auto-mode-alist '("\\.es$" . es-mode))

;; org-mode
(setq system-time-locale "C")           ; English time stamps
(setq org-src-fontify-natively t)       ; #+begin_src syntax highlight

;; org + es
(org-babel-do-load-languages
 'org-babel-load-languages
 '((elasticsearch . t)))

;; git-grep
(require 'helm-git-grep)
(global-set-key (kbd "M-p M-p") #'helm-git-grep-at-point)
(global-set-key (kbd "M-p p") #'helm-git-grep)
(global-set-key (kbd "M-p M-g") #'helm-git-grep)
(global-set-key (kbd "M-p g") #'helm-git-grep)

;; How to get current buffer's filename in emacs?
;; http://unix.stackexchange.com/a/45381/5235
(defun insert-file-name ()
  "Insert the full path file name into the current buffer."
  (interactive)
  (insert (buffer-file-name (window-buffer (minibuffer-selected-window)))))

;; Move to the beginning of a line the smart way
;; http://pragmaticemacs.com/emacs/move-to-the-beginning-of-a-line-the-smart-way/
(global-set-key (kbd "<home>") #'crux-move-beginning-of-line)

(provide 'misc)
;;; misc.el ends here
