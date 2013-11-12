(global-evil-leader-mode)
(evil-mode 1)

(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)

(key-chord-mode 1)
(key-chord-define evil-insert-state-map  "jk" 'evil-normal-state)

(setq evil-leader/leader ",")
(evil-leader/set-key
  "w" 'save-buffer
  "d" 'dash-at-point
  "q" 'save-buffers-kill-terminal
  "o" 'projectile-find-file
  "gs" 'magit-status
  "gb" 'magit-blame-mode
  "a" 'ag)
