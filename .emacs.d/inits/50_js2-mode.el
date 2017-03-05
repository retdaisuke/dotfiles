;;; js2-mode

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook
          '(lambda ()
             (define-key js2-mode-map "\C-c\C-c" 'comment-region)))
