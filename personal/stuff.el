;; Override the CM-h shortcut in ruby-mode (which points to
;; ruby-mark-defun). It should delete word backward like in all other
;; modes.
(define-key ruby-mode-map "\e\C-h" 'backward-kill-word)

;; auto-complete:
;; somehow it doesn't get activated by the package.
(require 'auto-complete-config)
(ac-config-default)

;; ac-nrepl
(require 'ac-nrepl)
(add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
(add-hook 'clojure-nrepl-mode-hook 'ac-nrepl-setup)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'nrepl-mode))

;; Ruby indentation in parenthesis
(setq ruby-deep-indent-paren nil)

;; RSpec - Don't run with rake
(setq rspec-use-rake-flag nil)

;; Common lisp interpreter
(setq inferior-lisp-program "sbcl")

;; Scheme interpreter
(setq scheme-program-name "mit-scheme")

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
