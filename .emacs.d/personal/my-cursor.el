;; my-cursor --- personal cursor settings

;;; Commentary:
;; change cursor shape dynamically
;; see http://emacs-fu.blogspot.co.il/2009/12/changing-cursor-color-and-shape.html
;; install cursor-chg from melpa

;;; Code:
(require 'cursor-chg)

(change-cursor-mode 1) ; On for overwrite/read-only/input mode
(toggle-cursor-type-when-idle 0) ; On when idle
(setq curchg-default-cursor-color "gold")
(setq curchg-default-cursor-type 'bar)
(setq curchg-overwrite/read-only-cursor-type 'box)

(provide 'cursor)
;;; my-cursor.el ends here
