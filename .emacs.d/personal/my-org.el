;; my-org --- customize org mode

;;; Commentary:
;; Install org-bullets from melpa

;;; Code:

(add-hook 'org-mode-hook
          #'(lambda ()
              ;; supporting modes
              (require 'org-bullets)
              (org-bullets-mode 1)
              (visual-line-mode 1)
              ;; key bindings
              (local-set-key (kbd "C-c 1") #'org-time-stamp-inactive)
                                        ; "C-c !" is a leader for fly-check
              ))

(provide 'personal-org)
;;; my-org.el ends here
