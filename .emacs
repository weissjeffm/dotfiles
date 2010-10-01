(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))

;;Turn off menu
;;(setq menu-bar-mode 0)

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

;;(require 'color-theme)
;; (eval-after-load "color-theme"
;;   '(progn
;;      (color-theme-initialize)
;;      (color-theme-jsc-dark)))
(require 'clojure-mode)

(add-hook 'slime-repl-mode-hook 
	(progn  (lambda()(paredit-mode 1))))

;;show parens
(show-paren-mode 1)

;;save sessions
(desktop-save-mode 1)

(defun swap-window-positions ()         ; Stephen Gildea
   "*Swap the positions of this window and the next one."
   (interactive)
   (let ((other-window (next-window (selected-window) 'no-minibuf)))
     (let ((other-window-buffer (window-buffer other-window))
           (other-window-hscroll (window-hscroll other-window))
           (other-window-point (window-point other-window))
	   (other-window-start (window-start other-window)))
       (set-window-buffer other-window (current-buffer))
       (set-window-hscroll other-window (window-hscroll (selected-window)))
       (set-window-point other-window (point))
       (set-window-start other-window (window-start (selected-window)))
       (set-window-buffer (selected-window) other-window-buffer)
       (set-window-hscroll (selected-window) other-window-hscroll)
       (set-window-point (selected-window) other-window-point)
       (set-window-start (selected-window) other-window-start))
     (select-window other-window)))


;;set up terminal colors and remote terminal settings
(setq term-default-fg-color "#00FF00")

(defun remote-term (new-buffer-name cmd &rest switches)
      (setq term-ansi-buffer-name (concat "*" new-buffer-name "*"))
      (setq term-ansi-buffer-name (generate-new-buffer-name term-ansi-buffer-name))
      (setq term-ansi-buffer-name (apply 'make-term term-ansi-buffer-name cmd nil switches))
      (set-buffer term-ansi-buffer-name)
      (term-mode)
      (term-char-mode)
      (term-set-escape-char ?\C-x)
      (switch-to-buffer term-ansi-buffer-name))

(defun open-jweiss ()
      (interactive) 
      (remote-term "jweiss.usersys" "ssh" "jweiss@jweiss.usersys.redhat.com"))



(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(show-paren-mode t))






;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))
