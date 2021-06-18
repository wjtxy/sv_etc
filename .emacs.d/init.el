(set-language-environment "Chinese-GB") 
(save-place-mode t)
(tool-bar-mode -1)
;;close backup
(setq make-backup-files nil)
(setq auto-save-default nil)
(scroll-bar-mode -1)
(menu-bar-mode -1)
;;显示行号
(global-linum-mode 1)
(setq linum-format (lambda (line) (propertize (format (let ((w (length (number-to-string (count-lines (point-min) (point-max)))))) (concat "%" 
(number-to-string w) "d ")) line) 'face 'linum)))
;;选中背景蓝色
(set-face-background 'region "blue")
;;关闭提示音
(setq ring-bell-function 'ignore)
 ;;--------------------------------------------------------------------------
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize) ;; You might already have this line

(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-always-ensure t)
;;///////////////////////////
(use-package company
  :init
  (global-company-mode)
  (setq company-minimum-prefix-length 2
	company-idle-delay 0.1) ;; default is 0.2
  )
;;//////////////////////////
(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-j")
  (setq gc-cons-threshold 100000000)
  (setq read-process-output-max (* 1024 1024)) ;; 1mb
  (setq lsp-headerline-breadcrumb-enable nil)
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (c++-mode . lsp-deferred)
	 (c-mode . lsp-deferred)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration)
		 )
  :commands (lsp lsp-deferred))

;; optionally
;;(use-package lsp-ui :commands lsp-ui-mode)
;;(use-package lsp-treemacs :commands lsp-treemacs-errors-list)
(use-package which-key
    :config
    (which-key-mode))
(with-eval-after-load 'lsp-mode
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration))
(with-eval-after-load 'lsp-mode
  (setq lsp-modeline-diagnostics-scope :workspace)
  )

;;///////////////////////
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(which-key gruvbox-theme lsp-mode use-package company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
