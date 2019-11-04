
;; Put this stuff at the end of config/user.el:

(remove-hook 'lisp-mode-hook 'enable-paredit-mode)
(remove-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
(remove-hook 'slime-repl-mode-hook 'enable-paredit-mode)
(remove-hook 'eval-expression-minibuffer-setup-hook 'enable-paredit-mode)
(remove-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(remove-hook 'ielm-mode-hook 'enable-paredit-mode)

