(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
(global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)
(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq auto-save-default nil)
(require 'recentf)
(require 'unicad)
(recentf-mode t)
(global-set-key (kbd "<f2>") 'recentf-open-files)
(global-set-key (kbd "<f3>") 'list-matching-lines)
(global-set-key (kbd "<f5>") 'sr-speedbar-toggle)
(setq-default indent-tabs-mode nil)
(setq c-basic-offset 4)
(show-paren-mode t)
(setq-default cursor-type 'bar)
(setq-default mode-line-format "%*%b%* (%f) (%l, %c) %p %m")
(fset 'yes-or-no-p 'y-or-n-p)
(add-hook 'c-mode-common-hook 'gtags-mode)
(setq gtags-suggested-key-mapping t)
(load "gtags")
(setq column-number-mode t)
(set-default-font "-outline-Microsoft Yahei UI-normal-normal-normal-sans-13-*-*-*-p-*-iso8859-1")
(require 'sr-speedbar)
(setq speedbar-tag-hierarchy-method (quote(speedbar-sort-tag-hierarchy)))
(setq large-file-warning-threshold nil)
(cua-mode t)
(setq cua-keep-region-after-copy t)
