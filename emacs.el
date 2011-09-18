;; .emacs

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

(add-to-list 'default-frame-alist '(height . 90))
(add-to-list 'default-frame-alist '(width . 90))


;; turn on font-lock mode
(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t))

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")

;; always end a file with a newline
;(setq require-final-newline 'query)


; Save space
;(menu-bar-mode nil)

;; ========== Support Wheel Mouse Scrolling ==========

(mouse-wheel-mode t)

;; ========== Enable Line and Column Numbering ==========

;; Show line-number in the mode line
(line-number-mode 1)

;; Show column-number in the mode line
(column-number-mode 1)

;;; Disable system beep
(setq visual-bell t)

(tool-bar-mode nil)
(blink-cursor-mode nil)
(set-default-font "6x10")

