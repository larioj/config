(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
			package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/")
			package-archives)
(package-initialize)

(require 'god-mode)
(global-set-key (kbd "<f6>") 'god-mode)
;; (setq god-exempt-major-modes nil)
;; (setq god-exempt-predicates nil)

(defun my-update-cursor ()
	(setq cursor-type (if (or god-local-mode buffer-read-only)
											'box
											'bar)))

(add-hook 'god-mode-enabled-hook 'my-update-cursor)
(add-hook 'god-mode-disabled-hook 'my-update-cursor)
