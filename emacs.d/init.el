(require 'cask "/usr/local/Cellar/cask/0.7.1/share/emacs/site-lisp/cask.el")
(cask-initialize)
(require 'pallet)
(add-to-list 'load-path "~/.emacs.d/custom")

(load "00_autocomplete.el")
(load "01_smartparens.el")
(load "02_projectile.el")
(load "03_evil.el")
(load "04_rainbow_delimiters.el")
(load "05_rainbow_mode.el")
(load "06_badwolf.el")
(load "07_ruby.el")

(menu-bar-mode -1)

;; Navigate between windows using Alt-1, Alt-2, Shift-left, shift-up, shift-right
(windmove-default-keybindings)

;; Enable copy and pasting from clipboard
(setq x-select-enable-clipboard t)

;; Disable backups
(setq backup-inhibited t)
;;disable auto save
(setq auto-save-default nil)
(setq inhibit-startup-message t)

(global-linum-mode 1)
(setq linum-format "%3d ")
