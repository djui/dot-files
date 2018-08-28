(menu-bar-mode -1)
(setq prelude-theme 'djui)


(setq-default
   ;; Keep old backups of changed files
   make-backup-files       t
   backup-by-copying       t
   version-control         t
   delete-old-versions     t
   kept-new-versions       10
   kept-old-versions       10
   backup-directory-alist  '(("." . "~/.emacs.d/backups"))
   undo-limit              100000
   ;; Version control
   vc-follow-symlinks      nil
   fill-column             80
)
