(custom-set-faces
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))
(global-hl-line-mode 1)
(set-face-background 'hl-line "#151500")

(require 'clojure-mode)

(add-hook 'slime-repl-mode-hook 
	(progn  (lambda()(paredit-mode 1))))

(add-hook 'eshell-mode-hook 
	(progn  (lambda()(paredit-mode 1))))

(add-hook 'clojure-mode-hook 
	(progn  (lambda()(paredit-mode 1))))

(defun goto-last-edit-point ()
  "Go to the last point where editing occurred."
  (interactive)
  (let ((undos buffer-undo-list))
    (when (listp undos)
      (while (and undos
		  (let ((pos (or (cdr-safe (car undos))
				 (car undos))))
		    (not (and (integerp pos)
			      (goto-char (abs pos))))))
	(setq undos (cdr undos))))))
(global-set-key (kbd "C-c SPC") 'goto-last-edit-point)





 


