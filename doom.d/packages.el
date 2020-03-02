;; -*- no-byte-compile: t; -*-
;;; ~/.doom.d/packages.el


;; disabled to fix something
(package! flycheck-popup-tip :disable t)


;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:fetcher github :repo "username/repo"))

;; Theme
(package! panda-theme)

(package! flycheck)
(package! company)

(package! lsp-mode)
(package! lsp-ui)
(package! company-lsp)

;; Language
(package! dockerfile-mode)
(package! protobuf-mode)
(package! cmake-mode)

(package! salt-mode)
(package! company-ansible)
(package! vagrant-tramp)

(package! vue-mode)
(package! vue-html-mode)

;; Rust
(package! rust-mode)
(package! flycheck-rust)

;; Golang
(package! go-mode)

;; useless
(package! fireplace)
