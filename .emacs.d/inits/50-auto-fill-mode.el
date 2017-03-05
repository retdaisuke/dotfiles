;;; auto-fill-mode

(setq-default auto-fill-mode nil)
(setq-default fill-column 300)
(setq text-mode-hook 'turn-off-auto-fill)
