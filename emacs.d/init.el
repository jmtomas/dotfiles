(package-initialize)
(push '("melpa" . "https://stable.melpa.org/packages/") package-archives)

(icomplete-mode)
(global-auto-revert-mode)
(fset 'yes-or-no-p 'y-or-n-p)

(add-hook 'haskell-mode-hook #'interactive-haskell-mode)

(setq ring-bell-function 'ignore
      inhibit-splash-screen t
      async-shell-command-display-buffer nil
      initial-scratch-message nil
      user-full-name "Juan Manuel Tomás"
      user-mail-address "jtomas1815@gmail.com"
      ediff-window-setup-function 'ediff-setup-windows-plain
      gc-cons-threshold 50000000
      large-file-warning-threshold 100000000
      compilation-read-command nil
      inferior-lisp-program "sbcl"
      scheme-program-name "csi"
      slime-contribs '(slime-fancy)
      completion-ignore-case t
      read-file-name-completion-ignore-case t
      read-buffer-completion-ignore-case t
      completion-ignore-case t
      make-backup-files nil
      auto-save-default nil)

(dolist (binding '(("C-M-g" . magit-status)
		   ("<f5>" . compile)
		   ("<f6>" . load-file)
		   ("M-o" . other-window)
		   ("M-1" . delete-other-windows)
		   ("M-2" . split-window-below)
		   ("M-3" . split-window-right)
		   ("M-0" . delete-window)
		   ("C-z" . undo)
		   ("C--" . undo)))
  (global-set-key (kbd (car binding)) (cdr binding)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d»" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(blink-cursor-mode nil)
 '(column-number-mode nil)
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes
   (quote
    ("84890723510d225c45aaff941a7e201606a48b973f0121cb9bcb0b9399be8cba" "61ae193bf16ef5c18198fbb4516f0c61a88f7b55b693a3b32d261d8501c4a54b" default)))
 '(font-use-system-font t)
 '(fringe-mode 0 nil (fringe))
 '(line-number-mode nil)
 '(menu-bar-mode nil)
 '(mode-line-format nil)
 '(mode-line-percent-position nil)
 '(package-selected-packages
   (quote
    (markdown-preview-mode markdown-mode+ markdown-mode helm-ag helm company irony json-mode php-mode sml-mode smalltalk-mode slime zenburn-theme lua-mode typescript-mode ## haskell-mode magit)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(window-divider-default-bottom-width 1)
 '(window-divider-default-places t)
 '(window-divider-default-right-width 1)
 '(window-divider-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "PfEd" :family "Ubuntu Mono")))))
