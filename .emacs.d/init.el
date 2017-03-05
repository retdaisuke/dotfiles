;;; init.el

;; 参考
;; https://github.com/jr4qpv/dot.emacs.d
;; http://sakito.jp/emacs/emacs23.html
;; https://masutaka.net/chalow/2015-10-03-1.html
;; https://github.com/okutani-t/dotfiles/tree/master/.emacs.d

;; .el が新しければそちらを読む
(setq load-prefer-newer t)

;; package
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)
(package-refresh-contents)

;; install packages
(load "~/.emacs.d/packages")

;; init-loader
(require 'init-loader)
(setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/inits")

;; custom-file
(setq custom-file (locate-user-emacs-file "custom.el"))
