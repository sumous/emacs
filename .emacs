;; =======================================================
;; initial
;; =======================================================
(add-to-list 'load-path "~/.emacs.d")
;; 关闭开启画面
(setq inhibit-startup-screen t)
;; 显示行号
(global-linum-mode t)
;; 模式行显示列号
(setq column-number-mode t) 
;; 不产生临时文件
(setq-default make-backup-files nil)

(setq indent-tabs-mode nil)

(setq tab-width 4)

(setq c-basic-offset 4)
;平滑显示
(setq scroll-step 1 scroll-margin 3 scroll-conservatively 10000)
;光标靠近鼠标时，鼠标自动让开
(mouse-avoidance-mode 'animate)
;标题栏显示文件的完整路径
(setq frame-title-format '("%S" (buffer-file-name "%f" (dired-directory dired-directory "%b"))))
;支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)
;设置光标为竖线
(setq-default cursor-type 'bar)

;;(setq lisp-indent-offset 2)

;;(setq slime-lisp-implementations '((sbcl ("sbcl"))))

;; ========================================================
;; php-mode
;; ========================================================
(require 'php-mode)
(add-hook 'php-mode-hook
  (lambda ()
    (c-set-style "K&R")
    (setq c-basic-offset 4)
    (setq tab-width 4)
    (setq indent-tabs-mode nil)
    (c-set-offset 'arglist-intro '+)
    (c-set-offset 'arglist-close 0)
    (auto-complete)))

;;==========================================================
;; auto-complete-1.3.1
;; include auto-complete.el, auto-complete.elc, auto-complete-config.el, auto-complete-config.elc, fuzzy.el, fuzzy.elc, dict/*
;; from http://cx4a.org/software/auto-complete/manual.html
;; =========================================================
(add-to-list 'load-path "~/.emacs.d/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")

(ac-config-default)

;; color-theme-print
(color-theme-initialize)
(color-theme-calm-forest)

;; ==========================================================
;; ibus
;; ==========================================================
(add-to-list 'load-path "~/.emacs.d/ibus")  
(require 'ibus)
 ;; Turn on ibus-mode automatically after loading .emacs
 (add-hook 'after-init-hook 'ibus-mode-on)
 ;; Change cursor color depending on IBus status
 (setq ibus-cursor-color '("red" "blue" "limegreen"))
(global-set-key (kbd "C-SPC") 'nil)

;; ===========================================================
;;ecb
;; ===========================================================
(require 'ecb)
;; 关闭tip of the day
(setq ecb-tip-of-the-day nil)
;; F11开启  F12关闭
(global-set-key (kbd "<f11>") 'ecb-activate)
(global-set-key (kbd "<f12>") 'ecb-deactivate)
;; 各窗口间切换  
(global-set-key [M-left] 'windmove-left)  
(global-set-key [M-right] 'windmove-right)  
(global-set-key [M-up] 'windmove-up)  
(global-set-key [M-down] 'windmove-down)  

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
