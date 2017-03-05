;;; php-mode

(add-hook 'php-mode-hook
          '(lambda ()
             (setq comment-start "// "
                   comment-end ""
                   comment-style 'indent
                   comment-use-syntax t)
             ;; 連続する空白の一括削除 (必要なければコメントアウトする)
             (c-toggle-hungry-state t)

             ;; マニュアルページを表示 C-c RET
             (setq php-manual-url "http://www.php.net/manual/ja/")

             ;; C-c f
             (setq php-search-url "http://www.php.net/ja/")

             ;; 補完のためのマニュアルのパス
             ;;(setq php-manual-path "path/path")

             ;; コメント行のインデント (必要なければコメントアウトする)
             (setq c-comment-only-line-offset 0)))
