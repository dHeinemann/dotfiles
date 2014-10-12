;; Packages
;;;;;;;;;;;;;;;;;;;;
(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
    package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/")
    package-archives)
(package-initialize)

;; Evil
;;;;;;;;;;;;;;;;;;;;
(require 'evil)
(evil-mode 1)
; Ignore word wrapping with j & k
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

; Use C-j & C-k to scroll down/up without changing the current line.
(define-key evil-normal-state-map (kbd "C-j") (lambda ()
						(interactive)
						(evil-scroll-line-down 2)
))
(define-key evil-normal-state-map (kbd "C-k") (lambda ()
						(interactive)
						(evil-scroll-line-up 2)
))

; Use Esc to exit M-x buffer
(defun minibuffer-keyboard-quit ()
    "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
    (interactive)
    (if (and delete-selection-mode transient-mark-mode mark-active)
        (setq deactivate-mark  t)
        (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
        (abort-recursive-edit)))
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(global-set-key [escape] 'evil-exit-emacs-state)

;; Display
;;;;;;;;;;;;;;;;;;;;
; Colour scheme & font
(load-theme 'solarized-dark t)
(set-default-font "PragmataPro 14")

; Always show 5 lines of context above and below the current line. Same as Vim scrolloff function.
(setq scroll-margin 5
    scroll-conservatively 9999
    scroll-step 1)

(global-linum-mode t) ; Show line numbers
(show-paren-mode t) ; Highlight matching parentheses
(setq-default truncate-lines 0) ; Disable word wrap
(tool-bar-mode -1) ; Disable toolbar
(scroll-bar-mode -1) ; Disable scrollbar

;; Formatting
;;;;;;;;;;;;;;;;;;;;
(setq-default tab-width 4 indent-tabs-mode nil) ; Use 4 spaces instead of tabs
(setq-default c-basic-offset 4 c-default-style "bsd") ; Use BSD style syntax
(define-key global-map (kbd "RET") 'newline-and-indent) ; Indent on return

;; Misc
;;;;;;;;;;;;;;;;;;;;
(setq-default default-directory "~/") ; Set default working directory
(setq-default ring-bell-function 'ignore) ; Disable console/GUI bell
