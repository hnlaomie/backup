;;; package -- 最后加载的配置
;;; Commentary:
;;; Code:

(if (file-exists-p custom-file)
    ;; 载入 custom 文件
    (load custom-file)
)

(provide 'init-last)
;;;  init-last.el ends here
