;;; personal/my-slack -- slack config

;;; Commentary:
;;;   A configuration for slack-mode
;;; Code:

(load-file (expand-file-name "~/.config/Slack/emacs-auth.el"))

(require 'slack)
(slack-register-team
 :name slack-register-team-name
 :default t
 :client-id slack-register-client-secret
 :client-secret slack-register-client-secret
 :token slack-register-token
 :subscribed-channels slack-register-subscribed-channels)

;; key binding
(define-key slack-info-mode-map (kbd "C-c C-s u") #'slack-room-update-message)

(define-key slack-mode-map (kbd "C-c C-s k") #'slack-buffer-kill)
(define-key slack-mode-map (kbd "C-c C-s r a") #'slack-message-add-reaction)
(define-key slack-mode-map (kbd "C-c C-s r r") #'slack-message-remove-reaction)
(define-key slack-mode-map (kbd "C-c C-s r s") #'slack-message-show-reaction-users)
(define-key slack-mode-map (kbd "C-c C-s p l") #'slack-room-pins-list)
(define-key slack-mode-map (kbd "C-c C-s p a") #'slack-message-pins-add)
(define-key slack-mode-map (kbd "C-c C-s p r") #'slack-message-pins-remove)
(define-key slack-mode-map (kbd "C-c C-s m m") #'slack-message-write-another-buffer)
(define-key slack-mode-map (kbd "C-c C-s m e") #'slack-message-edit)
(define-key slack-mode-map (kbd "C-c C-s m d") #'slack-message-delete)
(define-key slack-mode-map (kbd "C-c C-s u") #'slack-room-update-messages)
(define-key slack-mode-map (kbd "C-c C-s 2") #'slack-message-embed-mention)
(define-key slack-mode-map (kbd "C-c C-s 3") #'slack-message-embed-channel)
(define-key slack-mode-map (kbd "C-n") #'slack-buffer-goto-next-message)
(define-key slack-mode-map (kbd "C-p") #'slack-buffer-goto-prev-message)

(define-key slack-edit-message-mode-map (kbd "C-c C-s k") #'slack-message-cancel-edit)
(define-key slack-edit-message-mode-map (kbd "C-c C-s s") #'slack-message-send-from-buffer)
(define-key slack-edit-message-mode-map (kbd "C-c C-s 2") #'slack-message-embed-mention)
(define-key slack-edit-message-mode-map (kbd "C-c C-s 3") #'slack-message-embed-channel)

(provide 'my-slack)
;;; my-slack ends here
