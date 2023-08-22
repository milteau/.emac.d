;; No backup files
(setq make-backup-files nil
      auto-save-default nil)


;; Recently opened files
(use-package recentf
  :ensure nil
  :hook (after-init . recentf-mode)
  :custom
  (recentf-max-saved-items 300)
  (recentf-auto-cleanup 'never)
  (recentf-exclude '(;; Folders on MacOS start
		     "^/private/tmp/"
		     "^/var/folders/"
		     ;; Folders on MacOS end
		     "^/tmp/"
		     "/ssh\\(x\\)?:"
		     "/su\\(do\\)?:"
		     "^/usr/include/"
		     "/TAGS\\'"
		     "COMMIT_EDITMSG\\'")))

(provide 'init-base)

;;; init-base.el ends here
