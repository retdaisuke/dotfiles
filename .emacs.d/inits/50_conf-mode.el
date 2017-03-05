;;; conf-mode

(add-to-list 'auto-mode-alist '("\\.htaccess\\'" . conf-mode))
(add-to-list 'auto-mode-alist '("sites-\\(available\\|enabled\\)/" . conf-mode))
(add-to-list 'auto-mode-alist '("\\.cnf$" . conf-mode))
(add-to-list 'auto-mode-alist '("security$" . conf-mode))
