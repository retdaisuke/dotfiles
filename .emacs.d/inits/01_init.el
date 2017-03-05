;;; init

;; デバッグ状態
(setq debug-on-error t)

;;(cd "~/")

;; メニューバーとツールバー
(menu-bar-mode 0)
(tool-bar-mode 0)

;; モードラインにライン数、カラム数表示
(line-number-mode t)
(column-number-mode t)

;; 警告を視覚的にする
;; (setq visible-bell t)
(setq ring-bell-function 'ignore)

;; 他のプログラムからファイルが変更されたらバッファを再読み込みする
(global-auto-revert-mode 1)

;; 補完で大文字小文字を区別しない
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;;動的略語展開で大文字小文字を区別
(setq dabbrev-case-fold-search nil)

;;起動時のmessageを表示しない
;(setq inhibit-startup-message t)

;; scratch のメッセージを空にする
(setq initial-scratch-message nil)


;;; 編集関連

;; 行末スペースを保存と同時に削除
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; リージョンを kill-ring に入れないで削除できるようにする
(delete-selection-mode t)

;; TAB はスペース 4 個ぶんを基本
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; 対応するカッコを色表示する
;; cf. http://www.bookshelf.jp/soft/meadow_42.html#SEC630
;; 特に色をつけなくてもC-M-p、C-M-n を利用すれば対応するカッコ等に移動できる
(show-paren-mode t)

;; カッコ対応表示のスタイル
;; カッコその物に色が付く(デフォルト)
;; (setq show-paren-style 'parenthesis)
;; カッコ内に色が付く
;; (setq show-paren-style 'expression)
;; 画面内に収まる場合はカッコのみ、画面外に存在する場合はカッコ内全体に色が付く
(setq show-paren-style 'mixed)
(set-face-background 'show-paren-match-face "PaleTurquoise1")
(set-face-foreground 'show-paren-match-face "Black")

;;新規行を作成しない ※emacs21ではデフォルトで設定されている。
(setq next-line-add-newlines nil)

; スクロールのマージン
;; 指定した数字行だけスクロール
(setq scroll-conservatively 10000)
;; scroll-conservatively の古いバージョン。一行ずつスクロールする
(setq scroll-step 1)
;; 上端、下端における余白幅(初期設定 0)
;; (setq scroll-margin 10)
;; カーソル位置を変更しない
(setq scroll-preserve-screen-position t)
;; shell-mode において最後の行ができるだけウィンドウの一番下にくるようにする
(setq comint-scroll-show-maximum-output t)
;; C-v や M-v した時に以前の画面にあった文字を何行分残すか(初期設定 2)
;;(setq next-screen-context-lines 5)

;; 行の折り返し
(setq truncate-lines t)
(set-default 'truncate-lines t)