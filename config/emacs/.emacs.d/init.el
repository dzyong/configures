(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
(global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)
(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)
(global-auto-revert-mode t)
(require 'recentf)
(recentf-mode t)
(global-set-key (kbd "<f2>") 'recentf-open-files)
(global-set-key (kbd "<f3>") 'list-matching-lines)
(global-set-key (kbd "<f4>") 'gtags-parse-file)
(global-set-key (kbd "<f5>") 'imenu)
(global-set-key (kbd "TAB") '(lambda()(interactive)(insert "\t")))
(global-set-key (kbd "C-x C-c") 'save-buffers-kill-emacs)
(fset 'save-buffers-kill-emacs '(lambda()(interactive)(save-some-buffers nil t)(kill-emacs)))
(setq-default indent-tabs-mode nil)
(setq c-basic-offset 4)
(setq-default tab-width 4)
(c-set-offset 'innamespace 0)
(show-paren-mode t)
(setq-default cursor-type 'bar)
(setq-default mode-line-format "%*%b%* (%f) (%l, %c) %p %m")
(fset 'yes-or-no-p 'y-or-n-p)
(add-hook 'c-mode-common-hook 'gtags-mode)
(autoload 'gtags-mode "gtags")
(setq gtags-suggested-key-mapping t)
(setq gtags-auto-update t)
(set-face-attribute 'default nil :font "Courier New" :height 145)
(if (display-graphic-p)
(set-fontset-font (frame-parameter nil 'font) 'han (font-spec :family "Microsoft Yahei" :size 19)))
(setq large-file-warning-threshold nil)
(cua-mode t)
(setq cua-keep-region-after-copy t)
(setq ring-bell-function 'ignore)
(prefer-coding-system 'gb2312)
(setq default-buffer-file-coding-system 'utf-8-unix)
