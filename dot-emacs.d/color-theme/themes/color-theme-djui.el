;; Description: A color theme based on eclips3.media and monokai. Some thing were added to cover
;; extensions, and some things were changed, similar to the color theme almost-monokai.
;; The theme needs a 256 colors terminal emulator to display colors propperly in the terminal.
;; It only support a dark background and should be used in Terminal only.
;; The theme works well with the font Terminus.
;; Note, that even when not all colors are matching 100%, it's sufficient enough.
;;
;; Copyrights: 2009-2011 Uwe Dauernheim <uwe@dauernheim.net>
;; License: MIT License
;; Credits: http://github.com/lut4rp/almost-monokai
;; Credits: http://www.eclips3media.com/workshop/2007/12/06/eclips3media-eclm-textmate-theme

(defun color-theme-djui ()
  (interactive)
  (color-theme-install
   '(color-theme-djui
     ((foreground-color . "#F8F8F2")
      (cursor-color . "#DAD085"))

     (default                          ((t (nil))))
     (modeline                         ((t (:background "white" :foreground "black"))))
     (modeline-inactive                ((t (:background nil :foreground "dark gray"))))
     (minibuffer-prompt                ((t (:foreground "#66D9EF"))))                      ; bright blue

     (link                             ((t (:foreground nil :underline t))))
     (highlight-80+                    ((t (:background "#D62E00"))))                      ; red
     (hl-line                          ((t (:background "gray15"))))
     (linum                            ((t (:foreground "gray20" :background nil :bold nil))))             ; shadowed/gray
     (region                           ((t (:background "#6DC5F1"))))                      ; bright blue
     (ido-subdir                       ((t (:foreground "#F1266F"))))                      ; bright pink

     (isearch                          ((t (:background "palevioletred2" :foreground "brown4"))))
     (isearch-lazy                     ((t (:background "palevioletred2" :foreground "brown4"))))
     (isearch-fail                     ((t (:background "red4"))))
     (match                            ((t (:background "palevioletred2" :foreground "brown4"))))
     
     (sh-quoted-exec                   ((t (:foreground "salmon"))))

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
     (font-lock-comment-delimiter-face ((t (:foreground "#757165" :bold t))))              ; dirty  brown #75715D -> #757165
     (font-lock-comment-face           ((t (:foreground "#757165"))))                      ; dirty  brown #75715D -> #757165
     (font-lock-doc-face               ((t (:foreground "#65B042"))))                      ; dirty  green
     (font-lock-doc-string-face        ((t (:foreground "#FF0000"))))                      ; ???
     (font-lock-string-face            ((t (:foreground "#DFD874"))))                      ; dirty  beige
     (font-lock-reference-face         ((t (:foreground "#FF0000"))))                      ; ???
     (font-lock-warning-face           ((t (:foreground "red" :bold t))))                  ; red (FIXME, TODO, ...)
     (font-lock-negation-char-face     ((t (:foreground "#FF0000" :bold nil))))            ; ???

     (whitespace-line                  ((t (:background "gray15" :foreground "#D62E00")))) ; red
     (whitespace-tab                   ((t (:background "gray15"))))
     (whitespace-trailing              ((t (:background "red4"))))

     (diff-added                       ((t (:foreground "green"))))
     (diff-changed                     ((t (:foreground "yellow"))))
     (diff-removed                     ((t (:foreground "red"))))
     (diff-indicator-added             ((t (:foreground "green" :bold t))))
     (diff-indicator-changed           ((t (:foreground "yellow" :bold t))))
     (diff-indicator-removed           ((t (:foreground "red" :bold t))))

     (flymake-errline                  ((t (:background "FireBrick4"))))
     (flymake-warnline                 ((t (:background "DarkOrange"))))

     (rcirc-my-nick-face               ((t (:foreground "#6DC5F1"))))
     (rcirc-other-nick-face            ((t (:foreground "#F1266F"))))
     (rcirc-server-face                ((t (:foreground "gray20"))))
     (rcirc-nick-in-message-face       ((t (:foreground "cyan"))))
     (rcirc-prompt-face                ((t (:foreground "#65B042"))))
     (rcirc-mode-line-nick-face        ((t (:background "red" :foreground "#DFD874"))))

     (markdown-header-face-1           ((t (:inherit markdown-header-face))))
     (markdown-header-face-2           ((t (:inherit markdown-header-face :foreground "#E72E71"))))
     (markdown-header-face-3           ((t (:inherit markdown-header-face-1 :weight normal))))
     (markdown-header-face-4           ((t (:inherit markdown-header-face-2 :weight normal))))
     (twittering-username-face         ((t (:bold t))))
)))
(provide 'color-theme-djui)
