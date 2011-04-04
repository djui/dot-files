;;; color-theme-wombat.el
;;

(defun color-theme-wombat ()
  "Subdued color theme for Emacs by Jason Blevins.
Based on the Tango color palette."
  (interactive)
  (color-theme-install
   '(color-theme-wombat
     ((foreground-color . "#f6f3e8")
      (cursor-color . "#656565"))

     (fringe ((t (:background "#262626"))))
     (font-lock-builtin-face ((t (:foreground "white"))))
     (font-lock-comment-face ((t (:italic t :foreground "#99968b"))))
     (font-lock-doc-face ((t (:italic t :foreground "#99968b"))))
     (font-lock-constant-face ((t (:foreground "#e5786d"))))
     (font-lock-string-face ((t (:italic t :foreground "#95e454"))))
     (font-lock-variable-name-face ((t (:foreground "#cae682"))))
     (font-lock-function-name-face ((t (:foreground "#cae682"))))
     (font-lock-type-face ((t (:foreground "#ffffff"))))
     (font-lock-builtin-face ((t (:foreground "#8ac6f2"))))
     (font-lock-keyword-face ((t (:foreground "#8ac6f2"))))
     (font-lock-preprocessor-face ((t (:foreground "#e5786d"))))
     (font-lock-negation-char-face ((t (:foreground "#e7f6da"))))

     (link ((t (:bold t :underline t :foreground "#8ac6f2"))))
     (show-paren-match ((t (:bold t :foreground "#f6f3e8" :background "#857b6f"))))
     (region ((t (:background "#333333"))))
     (hl-line ((t (:background "gray15"))))

     (lazy-highlight ((t (:foreground "black"))))
     (lazy-highlight ((t (:background "yellow"))))
     )))
(provide 'color-theme-wombat)
