((nil . ((eval . (when (and 
                        (buffer-file-name)
                        (not (file-directory-p (buffer-file-name)))
                        (string-match-p "^[^.]" (buffer-file-name)))
                   (emacs-lisp-mode)
                   (unless (featurep 'package-build)
                     (let ((load-path (cons "../package-build" load-path)))
                       (require 'package-build)))
                   (package-build-minor-mode)
                   (setq-local flycheck-checkers nil)
                   (set (make-local-variable 'package-build-working-dir) (expand-file-name "../working/"))
                   (set (make-local-variable 'package-build-archive-dir) (expand-file-name "../packages/"))
                   (set (make-local-variable 'package-build-recipes-dir) default-directory))))))
