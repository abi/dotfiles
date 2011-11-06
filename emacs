
(setq load-path  (cons (expand-file-name "~/.emacs-code/") load-path))

; Color themes
(require 'color-theme)

(load "color-theme-sunburst")

(color-theme-initialize)
(color-theme-sunburst)

; Agda mode
(load-file (let ((coding-system-for-read 'utf-8))
                (shell-command-to-string "agda-mode locate")))
; Haskell mode
(load "~/.emacs-code/haskell-mode-2.8.0/haskell-site-file")

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
   (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
   ;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
   ;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)