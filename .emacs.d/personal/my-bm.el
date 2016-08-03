;;; personal/my-bm -- my visual bookmark
;;; Commentary:
;;;   Customization for the visual bookmark mode
;;;   install `bm' from Melpa first; also some customization was made with `bm-customize'
;;;   see: https://github.com/joodland/bm
;;; Code:

(require 'bm)

;; key bindings
(global-set-key (kbd "<C-f6>") 'bm-toggle)
(global-set-key (kbd "<M-f6>") 'bm-show)
(global-set-key (kbd "<f6>")   'bm-next)
(global-set-key (kbd "<S-f6>") 'bm-previous)

;; If you would like to cycle through bookmarks in all open buffers, add the following line:
(setq temporary-bookmark-p t)
;; If you would like to remove bookmark after jump to it by bm-next or bm-previous:
(setq bm-marker 'bm-marker-right)

(provide 'my-bm)
;;; my-bm.el ends here
