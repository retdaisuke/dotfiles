;;; keybind

;; C-h をbackspaceにする
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-c ?") 'help-command)

;; キーバインド定義
;;(define-key global-map (kbd "C-z") 'scroll-down-command)
(define-key global-map (kbd "C-c z") 'suspend-frame)
(define-key global-map (kbd "C-c C-SPC") 'kill-ring-save)

;;折り返しトグルコマンド
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)

;; "C-t" でウィンドウを切り替える。初期値はtranspose-chars
(define-key global-map (kbd "C-t") 'other-window)

;; 他のウィンドウを閉じる
(define-key global-map (kbd "<f12>") 'delete-other-windows)

;; 行番号の表示を切り替える
(global-set-key "\M-n" 'linum-mode)

;; C-c u でブラウザー起動
(global-set-key "\C-cu" 'browse-url-at-point)

;; 行頭でC-kを実行した時に1行削除にする
(setq kill-whole-line t)

;; バッファメニューを開いたたらバッファメニューへとぶ
;; http://www.math.s.chiba-u.ac.jp/~matsu/emacs/emacs21/grep.html
(global-set-key "\C-x\C-b" 'buffer-menu)

;; macOS
(when (eq system-type 'darwin)
  ; (setq mac-option-key-is-meta t)
  ; (setq mac-option-modifier 'meta)
  ; (setq mac-command-key-is-meta nil)
  ; (setq mac-command-modifier 'super)
  (setq ns-command-modifier (quote meta)))
