;;; package -- 启动脚本
;;; Commentary:
;;; Code:

(defconst user-lisp-dir (concat user-emacs-directory (file-name-as-directory "lisp")) "存放lisp代码目录.")
(defconst user-conf-dir (concat user-emacs-directory (file-name-as-directory "conf")) "存放非代码配置文件目录.")
(defconst user-temp-dir (concat user-emacs-directory (file-name-as-directory "temp")) "运行时生产数据目录.")

(require 'package)
(setq package-enable-at-startup nil
     package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/"))
     package-user-dir (concat user-temp-dir "elpa")
)
;; emacs24 require calling `package-initialize' explicitly
(package-initialize)

(add-to-list 'load-path user-lisp-dir)

(eval-when-compile (require 'init-macro))

(require 'init-elpa)
(require 'init-editor)
(require 'init-locale)
;;;
(require 'init-last)

(provide 'init)
;;;  init.el ends here
