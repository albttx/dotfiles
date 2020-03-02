;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(map!
      :envi "M-f"         #'swiper
      :envi "C-f"         #'comment-line

      :envi "M-<left>"    #'evil-window-left
      :envi "M-<down>"    #'evil-window-down
      :envi "M-<up>"      #'evil-window-up
      :envi "M-<right>"   #'evil-window-right

      ;; :envi "M-{"         #'+workspace:switch-previous
      ;; :envi "M-}"         #'+workspace:switch-next
      :envi "M-{"         #'next-buffer
      :envi "M-}"         #'previous-buffer
      ;; :nvi  "M-/"  #'evil-commentary
      :nvi  "M-/"  #'comment-line

      :envi "M-c" #'yank
      :envi "M-v" #'yank

	  :envi "M-." #'lsp-ui-peek-find-references
)

;; Auto refresh buffers
(global-auto-revert-mode 1)

;; Also auto refresh dired, but be quiet about it
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

;(setq doom-font (font-spec :family "Fira Mono" :size 14))
(setq doom-font (font-spec :family "Menlo" :size 14))

(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)

(add-hook 'prog-mode-hook
      (lambda () (interactive)
        (setq show-trailing-whitespace 1)))

(when (string= system-type "darwin")
  (setq dired-use-ls-dired nil))



;; Fix tramp blocking: see https://emacs.stackexchange.com/questions/12390/how-to-prevent-tramp-from-blocking-when-entering-password
;(projectile-global-mode)
;(set projectile-mode-line " Projectile")

;; FIX hange issue with tramp
;; (projectile-global-mode 1)

(add-hook 'text-mode-hook 'projectile-mode)
(add-hook 'prog-mode-hook 'projectile-mode)

;; LSP
;; (add-hook 'lsp-mode-hook 'lsp-ui-mode)

;(setq lsp-trace t)
;(setq lsp-save-logs "/tmp/emacs-trace.log")

;; Golang
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)
;(define-key go-mode-map (kbd "M-.") 'lsp-find-definition)


;; Vue JS
;; disable that ugly background color
(setq mmm-submode-decoration-level 0)
