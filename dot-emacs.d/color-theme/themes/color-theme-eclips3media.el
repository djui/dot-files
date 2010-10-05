;; From @http://github.com/lut4rp/almost-monokai

(defun color-theme-eclips3media ()
  (interactive)
  (color-theme-install
   '(color-theme-eclips3media  
     ((foreground-color . "#F8F8F2") 
      (cursor-color . "#DAD085"))
     (default                          ((t (nil))))
     (modeline                         ((t (:background "#272821" :foreground "white"))))
     (modeline-inactive                ((t (:background "#272821" :foreground "dark gray"))))
     ;; Erlang applied vars
     (font-lock-variable-name-face     ((t (:foreground "#A6E22A"))))                      ; bright green
     ;; function-header, arrow
     (font-lock-function-name-face     ((t (:foreground "#F1266F" :bold t))))              ; bright pink
     ;; int-bif, ext-bif, operators, guards, predefined
     (font-lock-builtin-face           ((t (:foreground "#B0B0B0"))))                      ; dirty white
     ;; int-function-calls, ext-function-calls, keywords-fun-n, macros, records
     (font-lock-type-face              ((t (:foreground "#FFFFFF"))))                      ; bright white
     ;; dollar
     (font-lock-constant-face          ((t (:foreground "#65B042"))))                      ; dirty  green
     ;; lc, keywords, quotes
     (font-lock-keyword-face           ((t (:foreground "#66D9EF"))))                      ; bright blue
     ;; attr
     (font-lock-preprocessor-face      ((t (:foreground "#F1266F"))))                      ; bright pink
     (font-lock-comment-delimiter-face ((t (:foreground "#75715D" :bold t))))              ; dirty  brown #75715D -> #757165
     (font-lock-comment-face           ((t (:foreground "#75715D"))))                      ; dirty  brown #75715D -> #757165
     (font-lock-doc-face               ((t (:foreground "#65B042"))))                      ; dirty  green
     (font-lock-doc-string-face        ((t (:foreground "#FF0000"))))                      ; ???
     (font-lock-string-face            ((t (:foreground "#DFD874"))))                      ; dirty  beige
     (font-lock-reference-face         ((t (:foreground "#FF0000"))))                      ; ???
     ;;(font-lock-warning-face           ((t (:foreground "#89BDFF" :bold t))))             ; bright purple
     (font-lock-warning-face           ((t (:foreground "red" :bold t))))                  ; red (FIXME, TODO, ...)
     (font-lock-negation-char-face     ((t (:foreground "#FF0000" :bold))))                ; ???
     (highlight-80+                    ((t (:background "#D62E00"))))                      ; red
     (whitespace-line                  ((t (:background "gray20" :foreground "#D62E00")))) ; red
     (hl-line                          ((t (:background "#1A1A1A"))))                      ; black
     (region                           ((t (:background "#6DC5F1"))))                      ; bright blue
     (ido-subdir                       ((t (:foreground "#F1266F"))))                      ; bright pink
     )))
(provide 'color-theme-eclips3media)
