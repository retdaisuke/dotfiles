;;; dired-init

;; for Windows
;; ディレクトリを先に表示する
;; http://www.bookshelf.jp/cgi-bin/goto.cgi?file=meadow&node=directory%20first
(setq ls-lisp-dirs-first t)

;; for Linxu
;; GNUのlsオプション使っているので、BSDではエラーになる
;;(setq dired-listing-switches "-AFl --group-directories-first")\

;;; diredから"r"でファイル名をインライン編集する
(require 'wdired)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)

;; IMEのON/OFFでカーソルの色を変える
(set-cursor-color "LimeGreen")
(add-hook 'w32-ime-on-hook
          (function (lambda () (set-cursor-color "LightPink"))))
(add-hook 'w32-ime-off-hook
          (function (lambda () (set-cursor-color "LimeGreen"))))
