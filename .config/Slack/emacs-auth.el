;;; ~/.config/Slack/emacs-auth -- authentication information for GNU/Emacs slack-mode

;;; Commentary:
;;;   This moved out of ~/.emacs.d/personal/my-slack and this file will be evaluated by it.
;;;   The motivation of doing so is to be able to

;;; Code:

(setq slack-register-team-name "MyTeamName")
(setq slack-register-client-id "aaaaaaaaaaa.00000000000")
(setq slack-register-client-secret "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb")
(setq slack-register-token "aaaa-sssssssssss-88888888888-hhhhhhhhhhh-jjjjjjjjjj")
(setq slack-register-subscribed-channels '(chan-one
                                           chan-two
                                           etc...))

;;; emacs-auth ends here
