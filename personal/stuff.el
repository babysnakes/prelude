;; auto-complete:
;; somehow it doesn't get activated by the package.
(require 'auto-complete-config)
(ac-config-default)

;; chef-mode
(add-to-list 'load-path (concat prelude-vendor-dir "chef-mode"))
(require 'chef-mode)
(setq chef-use-rvm nil)

;; Modified whitespace highlighting
;; (only highlight portion of the line that exceeds length)
(setq whitespace-style
      '(face tabs spaces trailing lines-tail space-before-tab newline
             indentation empty space-after-tab space-mark tab-mark newline-mark))
