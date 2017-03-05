;;; cua-mode

; M-p  矩形の幅を固定
; M-b  空白文字で埋める。 open-rectangle と同等
; M-s  文字列で置き換える。 string-rectangle と同等
; M-f  1種類の文字で埋める。 string-rectangle で1文字指定したときと同等
; M-i  矩形領域内の数字をインクリメントする
; M-n  矩形領域を連番で埋める。フォーマット指定可

(cua-mode t)  ; cua-modeをオン
(setq cua-enable-cua-keys nil)  ; CUAキーバインドを無効化
(define-key global-map (kbd "C-x SPC") 'cua-set-rectangle-mark)
