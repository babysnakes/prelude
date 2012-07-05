;; disable guru-mode
(defun disable-guru-mode ()
  (guru-mode -1))
(add-hook 'prelude-prog-mode-hook 'disable-guru-mode t)

;; auto-complete:
;; somehow it doesn't get activated by the package.
(require 'auto-complete-config)
(ac-config-default)

;; Also use ac-slime
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'slime-repl-mode))

;; chef-mode
(add-to-list 'load-path (concat prelude-vendor-dir "chef-mode"))
(require 'chef-mode)
(setq chef-use-rvm nil)

;; Modified whitespace highlighting
;; (only highlight portion of the line that exceeds length)
(setq whitespace-style
      '(face tabs trailing lines-tail space-before-tab newline
             indentation empty space-after-tab tab-mark))

;; xlicense
(load-library
 (concat prelude-vendor-dir "xlicense.el"))
