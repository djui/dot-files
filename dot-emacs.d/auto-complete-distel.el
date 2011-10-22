;; auto-complete-distel

;; really fugly hack
;; this assumes you have a node up and running

(require 'auto-complete)
(eval-when-compile
  (require 'cl))

(defface ac-distel-candidate-face
  '((t (:background "orange" :foreground "navy")))
  "Face for gtags candidate"
  :group 'auto-complete)

(defface ac-distel-selection-face
  '((t (:background "navy" :foreground "white")))
  "Face for the gtags selected candidate."
  :group 'auto-complete)

(defvar ac-source-distel
  '((candidates . ac-distel-candidates)
    (candidate-face . ac-distel-candidate-face)
    (selection-face . ac-distel-selection-face)
    (requires . 0)
    (cache)))

(defvar ac-distel-candidates-cache nil
  "Horrible global variable that caches the selection to be returned.")

(defun ac-distel-candidates ()
  (ac-distel-complete)
  ac-distel-candidates-cache)

(defun ac-distel-complete ()
  "Complete the module or remote function name at point."
  (interactive)
  (let ((node erl-nodename-cache)
        (end (point))
    (beg (ignore-errors
           (save-excursion (backward-sexp 1)
                   ;; FIXME: see erl-goto-end-of-call-name
                   (when (eql (char-before) ?:)
                 (backward-sexp 1))
                   (point)))))
    (when beg
      (let* ((str (buffer-substring-no-properties beg end))
         (buf (current-buffer))
         (continuing (equal last-command (cons 'erl-complete str))))
    (setq this-command (cons 'erl-complete str))
    (if (string-match "^\\(.*\\):\\(.*\\)$" str)
        ;; completing function in module:function
        (let ((mod (intern (match-string 1 str)))
          (pref (match-string 2 str))
          (beg (+ beg (match-beginning 2))))
          (erl-spawn
        (erl-send-rpc node 'distel 'functions (list mod pref))
        (&ac-distel-receive-completions "function" beg end pref buf
                                                continuing)))
      ;; completing just a module
      (erl-spawn
        (erl-send-rpc node 'distel 'modules (list str))
        (&ac-distel-receive-completions "module" beg end str buf continuing))
          )))))

(defun &ac-distel-receive-completions (what beg end prefix buf continuing)
  (let ((state (erl-async-state buf)))
    (erl-receive (what state beg end prefix buf continuing)
    ((['rex ['ok completions]]
          (setq ac-distel-candidates-cache completions)
          )
     (['rex ['error reason]]
      (message "Error: %s" reason))
     (other
      (message "Unexpected reply: %S" other))))))

(provide 'auto-complete-distel)
