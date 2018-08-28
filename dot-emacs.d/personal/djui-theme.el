;; Description: A color theme based on eclips3.media and monokai. Some thing were added to cover
;; extensions, and some things were changed, similar to the color theme almost-monokai.
;; The theme needs a 256 colors terminal emulator to display colors propperly in the terminal.
;; It supports a dark and a light background and should be used in Terminal only.
;; The theme works well with the font Terminus or any other non-aliased font.
;; Note that even when not all colors are matching 100%, it's sufficient enough.
;;
;; Copyrights: 2009-2013 Uwe Dauernheim <uwe@dauernheim.net>
;; License: MIT License
;; Credits: http://github.com/lut4rp/almost-monokai
;; Credits: http://www.eclips3media.com/workshop/2007/12/06/eclips3media-eclm-textmate-theme
;; Credits: https://github.com/lvillani/el-monokai-theme

(unless (>= emacs-major-version 24)
  (error "djui-theme requires Emacs 24 or later."))

(deftheme djui
  "Djui color theme")

(let ((djui-white        "White"         )
      (djui-gray-darkest "Gray15"        )
      (djui-gray-darker  "Gray20"        )
      (djui-gray-dark    "Gray30"        )
      (djui-gray-light   "Gray60"        )
      (djui-gray-lighter "Gray70"        )
      (djui-black        "Black"         )
      (djui-red-darker   "Red4"          )
      (djui-red-dark     "PalevioletRed4")
      (djui-red          "#D62E00"       )
      (djui-red-light    "#E72E71"       )
      (djui-red-lighter  "#F1266F"       )
      (djui-red-lightest "PalevioletRed2")
      (djui-orange-dark  "DarkOrange"    )
      (djui-orange-light "Salmon"        )
      (djui-yellow-light "#DFD874"       )
      (djui-green-light  "#A6E22A"       )
      (djui-green-dark   "#65B042"       )
      (djui-blue-light   "#66D9EF"       )
      (djui-blue-lighter "#6DC5F1"       )
      (djui-unknown      "Red"           ))
  (custom-theme-set-faces
   'djui
   ;; Frame
   `(default                          ((t ("nil"))))
   ;`(default
   ;   (((class color) (background dark)) (:foreground "gray"))
   ;   (((class color) (background light)) (:foreground "black")))
   `(hl-line                          ((t (:background ,djui-gray-darkest))))
   `(minibuffer-prompt                ((t (:foreground ,djui-blue-light))))
   `(modeline                         ((t (:foreground ,djui-black :background ,djui-white))))
   `(modeline-inactive                ((t (:foreground ,djui-gray-lighter :background nil))))
   `(region                           ((t (:foreground ,djui-black :background ,djui-blue-lighter))))
   `(highlight                        ((t (:background ,djui-red-lightest))))
   `(highlight-80+                    ((t (:background ,djui-red))))
   `(indent-guide-face                ((t (:foreground ,djui-gray-dark))))
   `(ido-subdir                       ((t (:foreground ,djui-red-lighter))))
   `(isearch                          ((t (:foreground ,djui-red-darker :background ,djui-red-lightest))))
   `(lazy-highlight                   ((t (:foreground ,djui-black :background ,djui-red-dark))))
   `(link                             ((t (:foreground nil :underline t))))
   `(linum                            ((t (:foreground ,djui-gray-darker :background nil :bold nil))))
   `(match                            ((t (:foreground ,djui-red-darker :background ,djui-red-lightest))))
   `(sh-quoted-exec                   ((t (:foreground ,djui-orange-light))))
   ;; Main
   `(font-lock-builtin-face           ((t (:foreground ,djui-white :bold nil))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,djui-gray-dark :bold t))))
   `(font-lock-comment-face           ((t (:foreground ,djui-gray-dark))))
   `(font-lock-constant-face          ((t (:foreground ,djui-green-dark))))
   `(font-lock-doc-face               ((t (:foreground ,djui-green-dark))))
   `(font-lock-doc-string-face        ((t (:foreground ,djui-unknown)))) ; ???
   `(font-lock-function-name-face     ((t (:foreground ,djui-red-lighter :bold t))))
   `(font-lock-keyword-face           ((t (:foreground ,djui-blue-light))))
   `(font-lock-negation-char-face     ((t (:foreground ,djui-unknown :bold nil)))) ; ???
   `(font-lock-preprocessor-face      ((t (:foreground ,djui-red-lighter))))
   `(font-lock-reference-face         ((t (:foreground ,djui-unknown)))) ; ???
   `(font-lock-string-face            ((t (:foreground ,djui-yellow-light))))
   `(font-lock-type-face              ((t (:foreground ,djui-white :bold nil))))
   `(font-lock-variable-name-face     ((t (:foreground ,djui-green-light))))
   `(font-lock-warning-face           ((t (:foreground "Red" :bold t)))) ; FIXME, TODO, ...
   ;; whitespace-mode
   `(whitespace-line                  nil)
   `(whitespace-tab                   ((t (:background ,djui-gray-darker))))
   `(whitespace-trailing              ((t (:background ,djui-red-darker))))
   ;; highlight-chars
   `(hc-tab                           ((t (:background ,djui-gray-darker))))
   `(hc-trailing-whitespace           ((t (:background ,djui-red-darker))))
   ;; diff-mode
   `(diff-added                       ((t (:foreground "Green"))))
   `(diff-changed                     ((t (:foreground "Yellow"))))
   `(diff-file-header                 ((t (:background ,djui-gray-darkest :bold t))))
   `(diff-header                      ((t (:background nil))))
   `(diff-indicator-added             ((t (:foreground "Green" :bold t))))
   `(diff-indicator-changed           ((t (:foreground "Yellow" :bold t))))
   `(diff-indicator-removed           ((t (:foreground "Red" :bold t))))
   `(diff-removed                     ((t (:foreground "Red"))))
   ;; autocomplete-mode
   ;`(ac-candidate-face                ((t (:background ,djui-gray-darkest))))
   ;`(ac-completion-face               ((t (:foreground ,djui-gray-darker :underline t))))
   ;`(ac-distel-candidate-face         ((t (:foreground ,djui-orange-dark :background ,djui-gray-darkest))))
   ;`(ac-distel-selection-face         ((t (:foreground ,djui-orange-dark :background ,djui-gray-darker))))
   ;`(ac-selection-face                ((t (:background ,djui-gray-lighter))))
   ;; highlight-parentheses-mode
   `(hl-paren-face                    ((t (:bold t :underline t))))
   ;; markup-mode/adoc-mode
   `(markup-title-0-face              ((t (:inherit font-lock-function-name-face :weight bold))))
   `(markup-title-1-face              ((t (:inherit markup-title-0-face :foreground ,djui-red-light))))
   `(markup-title-2-face              ((t (:inherit markup-title-0-face :weight normal))))
   `(markup-title-3-face              ((t (:inherit markup-title-1-face :weight normal))))
   `(markup-strong-face               ((t (:inherit font-lock-variable-name-face :weight bold))))
   `(markup-verbatim-face             ((t (:inherit font-lock-constant-face))))
   `(markup-typewriter-face           ((t (:inherit markup-verbatim-face))))
   `(markup-code-face                 ((t (:inherit markup-verbatim-face))))
   `(markup-list-face                 ((t (:inherit font-lock-builtin-face))))
   `(markup-table-face                ((t (:inherit font-lock-string-face))))
   `(markup-reference-face            ((t (:inherit font-lock-keyword-face))))
   `(markup-internal-reference-face   ((t (:inherit font-lock-string-face))))
   `(markup-attribute-face            ((t (:inherit font-lock-doc-face))))
   `(markup-meta-face                 ((t (:inherit font-lock-comment-face))))
   `(markup-meta-hide-face            ((t (:inherit markup-meta-face))))
   ;; markdown-mode
   `(markdown-header-face-1           ((t (:inherit markup-title-0-face))))
   `(markdown-header-face-2           ((t (:inherit markup-title-1-face))))
   `(markdown-header-face-3           ((t (:inherit markup-title-2-face))))
   `(markdown-header-face-4           ((t (:inherit markup-title-3-face))))
   ;; flycheck-mode
   `(flycheck-error                   ((t (:background ,djui-red-darker))))
   `(flycheck-warning                 ((t (:background ,djui-orange-dark))))
   ;; rcirc-mode
   `(rcirc-bright-nick                ((t (:foreground "Yellow" :bold t))))
   `(rcirc-dim-nick                   ((t (:foreground ,djui-gray-darker :bold t))))
   `(rcirc-keyword                    ((t (:foreground ,djui-unknown)))) ; ???
   `(rcirc-my-nick                    ((t (:foreground ,djui-gray-darker :bold t))))
   `(rcirc-nick-in-message            ((t (:foreground "Red"))))
   `(rcirc-nick-in-message-full-line  ((t (:background ,djui-gray-darker))))
   `(rcirc-other-nick                 ((t (:foreground ,djui-white :bold t))))
   `(rcirc-prompt                     ((t (:foreground ,djui-white :bold t))))
   `(rcirc-server                     ((t (:foreground ,djui-gray-dark))))
   `(rcirc-server-prefix              ((t (:foreground ,djui-gray-dark :bold t))))
   `(rcirc-timestamp                  ((t (:foreground ,djui-gray-lighter))))
   `(rcirc-track                      ((t (:foreground ,djui-unknown :underline t)))) ; ???
   `(rcirc-track-keyword              ((t (:foreground ,djui-unknown :bold t)))) ; ???
   `(rcirc-url                        ((t (:underline t))))
   ;; twittering-mode
   `(twittering-username-face         ((t (:bold t))))
   ;; w3m-mode
   `(w3m-anchor                       ((t (:foreground ,djui-blue-light))))
   `(w3m-arrived-anchor               ((t (:foreground ,djui-blue-light)))) ; inherit w3m-anchor
   `(w3m-form                         ((t (:foreground ,djui-red-lighter))))
   `(w3m-form-button                  ((t (:foreground ,djui-red-lighter)))) ; inherit w3m-form
   ;; auto-highlight-symbol-mode
   `(ahs-face                         ((t (:underline t :background nil :foreground nil))))
   `(ahs-definition-face              ((t (:underline t :background nil :foreground nil))))
   `(ahs-plugin-defalt-face           ((t (:underline t :background nil :foreground nil))))
   `(ahs-plugin-whole-buffer-face     ((t (:underline t :background nil :foreground nil))))
   ))

(provide-theme 'djui)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; djui-theme.el ends here
